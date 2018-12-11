rm(list=ls(all=TRUE))
#Gera os indicadores  para o proadess
#Faz uso dos objetos de outra fonte, como: resultado(as queries geradas nos sistemas) e 
#Ficha_Selecao_Filtrada(Ficha que traz somente os indicadores possíveis de serem feitos)
#Objetos finais são as bases de dados, com os indicadores e códigos para posterior uso na página do Proadess.
#Objeto Final1: Final_Num_UF
#Objeto Final2: Final_Num_RG
#Objeto Final3: Final_Num_BR
#Objeto Final4: Final_Num_CGR

#Este script traz os objetos "Ficha_Selecao_Filtrada"(Ficha com os indicadores possíveis de serem feitos)
#e "Resultado_Selecoes"(Base com resultado das queries)
source('~/Proadess/2_Geracao_Selecoes.R')



#Essas listas serão usadas para ditar uma lista padrão, pois a tabulação só trará municípios que possuem algum caso,
#deixando de fora municípios que não possuem casos.
#A nossa estrutura exibe, por padrão, todas os entes das abrangências.

Cirs <- read.csv2('~/Proadess/Tabelas_Auxiliares/Lista_Cirs.csv', stringsAsFactors = F,colClasses=c("Mun"="character"))
Cirs<- Cirs[,-(3:7)]

UF<-c(11,12,13,14,15,16,17,21,22,23,24,25,26,27,28,29,31,32,33,35,41,42,43,50,51,52,53)
RG<-c(1,2,3,4,5)
BR<-555



#Adiciona a identificação de abrangência na base das seleções
Resultado_Selecao <-merge(Resultado_Selecao, Cirs, by.x="Munic_res", by.y="Mun",all.x=T)
Resultado_Selecao <-cbind(Resultado_Selecao,"UF" = substring(Resultado_Selecao$Munic_res,1,2),"RG"=substring(Resultado_Selecao$Munic_res,1,1),"BR"=555)


#O loop passa por cada indicador buscando e somando as seleções em cada um dos campos de numerador e denominador
#A proposta é sempre fazer uma razão (Numerador/Denominador) * multiplicador
#Às vezes é necessário fazer uma simples contagem, nestes casos o Denominador é igual a 1.

#As bases que acumularão os diferentes indicadores
Final_Num_UF <-NULL
Final_Num_RG <-NULL
Final_Num_BR <-NULL
Final_Num_CGR <-NULL

for (i in 1:length(Ficha_Selecao_Filtrada[[1]])) {
  
  #Verifica se o ag_numerador e ag_denominador estão preenchidos.
  if(Ficha_Selecao_Filtrada[[6]][[i]] != "" & Ficha_Selecao_Filtrada[[7]][[i]] != "") {
    
    #Os anos iniciais são definidos na ficha. Atualmente(2018), os indicadores começam no ano 2000.
    ANOI <- Ficha_Selecao_Filtrada$Ag_ANOI[i]
    
    #Os NUM e os DEN serão usados para gerar as agregações para região, UF, RG e BR.
    Num_MUN <- NULL
    Num_CGR<-NULL
    Num_UF <- NULL
    Num_RG <- NULL
    Num_BR <- NULL
    
    Den_MUN <-NULL
    Den_CGR<-NULL
    Den_UF <-NULL
    Den_RG<-NULL
    Den_BR <-NULL
    
    

    
    #Neste passo, contamos o número de seleções que o indicador usa, se mais de uma, ocorre uma soma, no numerador e denominador.
    #As seleções, na ficha, são separadas por ";"
    NNum <- length(strsplit(Ficha_Selecao_Filtrada[[6]][[i]], ";")[[1]])
    NDen <- length(strsplit(Ficha_Selecao_Filtrada[[7]][[i]], ";")[[1]])
    
    #Juntamos as diferentes seleções para posterior soma - NUMERADOR
    for(j in 1:NNum) {
      Num_MUN<-rbindlist(list(Resultado_Selecao,subset(Resultado_Selecao,toupper(Resultado_Selecao$Ind)== toupper(strsplit(Ficha_Selecao_Filtrada$Ag_Numerador[[i]], ";")[[1]])[j])))
    }
    
    #Filtro para o Ano inicial
    Num_MUN<-Num_MUN[Ano>=ANOI,]
    
    
    #SOMA UF
    Num_UF <- Num_MUN[, list("Freq" = sum(Freq)), by = c("UF","Ano")]
    Num_UF<-Num_UF[!is.na(Num_UF[[1]]) & !is.na(Num_UF[[2]]) & !is.na(Num_UF[[3]]),]
    names(Num_UF)[3] <- "Freq_Num"
    
    
    #SOMA RG
    Num_RG <- Num_MUN[, list("Freq" = sum(Freq)), by = c("RG","Ano")]
    Num_RG<-Num_RG[!is.na(Num_RG[[1]]) & !is.na(Num_RG[[2]]) & !is.na(Num_RG[[3]]),]
    names(Num_RG)[3] <- "Freq_Num"
    
    
    #SOMA BR
    Num_BR <- Num_MUN[, list("Freq" = sum(Freq)), by = c("BR","Ano")]
    Num_BR <-Num_BR[!is.na(Num_BR[[1]]) & !is.na(Num_BR[[2]]) & !is.na(Num_BR[[3]]),]
    names(Num_BR)[3] <- "Freq_Num"
    
    
    #SOMA CGR
    Num_CGR <- Num_MUN[, list("Freq" = sum(Freq)), by =  c("Cgr","Ano")]
    Num_CGR<-Num_CGR[!is.na(Num_CGR[[1]]) & !is.na(Num_CGR[[2]]) & !is.na(Num_CGR[[3]]),]  
    Num_CGR<-Num_CGR[!Num_CGR[[1]]==99999,] 
    names(Num_CGR)[3] <- "Freq_Num"
    
    
    
    
    #Checa se o Denominador é 1.
    if (strsplit(Ficha_Selecao_Filtrada[[7]][[i]], ";")[[1]][1] != 1) {
      
      #Juntamos as diferentes seleções para posterior soma - DENOMINADOR
      for(j in 1:NDen) {
        Den_MUN<-rbindlist(list(Resultado_Selecao,subset(Resultado_Selecao,toupper(Resultado_Selecao$Ind)== toupper(strsplit(Ficha_Selecao_Filtrada$Ag_Denominador[[i]], ";")[[1]])[j])))
      }
      
      
      #Filtro para o Ano inicial
      Den_MUN<-Den_MUN[Ano>=ANOI,]      
      
      
      #SOMA UF
      Den_UF <- Den_MUN[, list("Freq" = sum(Freq)), by = c("UF","Ano")]
      Den_UF<-Den_UF[!is.na(Den_UF[[1]]) & !is.na(Den_UF[[2]]) & !is.na(Den_UF[[3]]),]
      names(Den_UF)[3] <- "Freq_Den"
      
      
      #SOMA RG
      Den_RG <- Den_MUN[, list("Freq" = sum(Freq)), by = c("RG","Ano")]
      Den_RG<-Den_RG[!is.na(Den_RG[[1]]) & !is.na(Den_RG[[2]]) & !is.na(Den_RG[[3]]),]
      names(Den_RG)[3] <- "Freq_Den"
      
      #SOMA BR
      Den_BR <- Den_MUN[, list("Freq" = sum(Freq)), by = c("BR","Ano")]
      Den_BR <-Den_BR[!is.na(Den_BR[[1]]) & !is.na(Den_BR[[2]]) & !is.na(Den_BR[[3]]),]
      names(Den_BR)[3] <- "Freq_Den"
      
      #SOMA CGR
      Den_CGR <- Den_MUN[, list("Freq" = sum(Freq)), by =  c("Cgr","Ano")]
      Den_CGR<-Den_CGR[!is.na(Den_CGR[[1]]) & !is.na(Den_CGR[[2]]) & !is.na(Den_CGR[[3]]),]  
      Den_CGR<-Den_CGR[!Den_CGR[[1]]==99999,] 
      names(Den_CGR)[3] <- "Freq_Den"
      
      
    }  else {
      
      #Se o denominador for 1, seguimos com esta proposta
      Den_UF<-cbind(Num_UF[,1:2],"Freq_Den" = 1)
      Den_RG<-cbind(Num_RG[,1:2],"Freq_Den" = 1)
      Den_BR<-cbind(Num_BR[,1:2],"Freq_Den" = 1)
      Den_CGR<-cbind(Num_CGR[,1:2],"Freq_Den" = 1)
      
      
    }
    
    #Junta Numerador e Denominador num único objeto
    Num_UF <-  merge(Num_UF, Den_UF, by=c("UF","Ano"), all = TRUE)
    Num_RG <-  merge(Num_RG, Den_RG, by=c("RG","Ano"), all = TRUE)
    Num_BR <-  merge(Num_BR, Den_BR, by=c("BR","Ano"), all = TRUE)
    Num_CGR <- merge(Num_CGR, Den_CGR, by=c("Cgr","Ano"), all = TRUE)
    
    
    
    #Realiza a operação Numerador/Denominador * Multiplicador
    
    Num_UF<- cbind(Num_UF,"Res_Ind"=Ficha_Selecao_Filtrada$Ag_Multiplicador[[i]] * Num_UF$Freq_Num/Num_UF$Freq_Den)
    Num_RG<- cbind(Num_RG,"Res_Ind"=Ficha_Selecao_Filtrada$Ag_Multiplicador[[i]] * Num_RG$Freq_Num/Num_RG$Freq_Den)    
    Num_BR<- cbind(Num_BR,"Res_Ind"=Ficha_Selecao_Filtrada$Ag_Multiplicador[[i]] * Num_BR$Freq_Num/Num_BR$Freq_Den)
    Num_CGR<- cbind(Num_CGR,"Res_Ind"=Ficha_Selecao_Filtrada$Ag_Multiplicador[[i]] * Num_CGR$Freq_Num/Num_CGR$Freq_Den)
    
    
    #Gera a tabela padrão com as combinações das UF, RG, BR e CGR, com os anos iniciais e finais
    #Aproveita o ano inicial e final dos indicadores.
    MaxNum = max(unique(Num_BR[[2]]), na.rm=T)
    MaxDen = max(unique(Den_BR[[2]]), na.rm=T)
    MaxND  = min(c(MaxNum,MaxDen), na.rm=T)
    
    #Gera a tabela padrão para as abrangências.
    Tab_Padrao_UF<-expand.grid(UF,c(ANOI:MaxND))
    names(Tab_Padrao_UF)[1]<-"UF"
    names(Tab_Padrao_UF)[2]<-"Ano"
    
    Tab_Padrao_RG<-expand.grid(RG,c(ANOI:MaxND))
    names(Tab_Padrao_RG)[1]<-"RG"
    names(Tab_Padrao_RG)[2]<-"Ano"
    
    Tab_Padrao_BR<-expand.grid(BR,c(ANOI:MaxND))
    names(Tab_Padrao_BR)[1]<-"BR"
    names(Tab_Padrao_BR)[2]<-"Ano"
    
    Tab_Padrao_CGR<-expand.grid(unique(Cirs[2][Cirs[2]!=99999]),c(ANOI:MaxND))
    names(Tab_Padrao_CGR)[1]<-"Cgr"
    names(Tab_Padrao_CGR)[2]<-"Ano"
    
    #Une os resultados a tabela padrão
    Num_UF <- data.table(merge(Tab_Padrao_UF,Num_UF,all.x=T))
    Num_RG <- data.table(merge(Tab_Padrao_RG,Num_RG,all.x=T))
    Num_BR <- data.table(merge(Tab_Padrao_BR,Num_BR,all.x=T))
    Num_CGR <- data.table(merge(Tab_Padrao_CGR,Num_CGR,all.x=T))
    
    
    #O Código do indicador para a página do proadess segue a orientação da ficha.
    #Está dividido em 2 partes
    Cod_Indicador_Parte1 <-paste(Ficha_Selecao_Filtrada[i,c(2,9:11)],collapse="")
    Cod_Indicador_Parte2 <-paste(Ficha_Selecao_Filtrada[i,c(13:19)],collapse="")
    
    
    Num_UF<- cbind(Num_UF,"Cod_indicador"=paste0(Cod_Indicador_Parte1,substring(Num_UF$Ano,3,4),Cod_Indicador_Parte2))
    Num_RG<- cbind(Num_RG,"Cod_indicador"=paste0(Cod_Indicador_Parte1,substring(Num_RG$Ano,3,4),Cod_Indicador_Parte2))
    Num_BR<- cbind(Num_BR,"Cod_indicador"=paste0(Cod_Indicador_Parte1,substring(Num_BR$Ano,3,4),Cod_Indicador_Parte2))
    Num_CGR<- cbind(Num_CGR,"Cod_indicador"=paste0(Cod_Indicador_Parte1,substring(Num_CGR$Ano,3,4),Cod_Indicador_Parte2))
    
    #Imputa valor zero se houver informação no Denominador e não houver no numerador
    if (Ficha_Selecao_Filtrada$Ag_NA[[i]] == 0) {
      
      Num_UF$Res_Ind[is.na(Num_UF$Freq_Num) & !is.na(Num_UF$Freq_Den)] <-0
      Num_RG$Res_Ind[is.na(Num_RG$Freq_Num) & !is.na(Num_RG$Freq_Den)] <-0
      Num_BR$Res_Ind[is.na(Num_BR$Freq_Num) & !is.na(Num_BR$Freq_Den)] <-0
      Num_CGR$Res_Ind[is.na(Num_CGR$Freq_Num) & !is.na(Num_CGR$Freq_Den)] <-0
        
    }
    
    #Imputa valor zero  se a variável "Zeros" for igual a 1.
    if(!is.na(Ficha_Selecao_Filtrada$Zeros[i]) & Ficha_Selecao_Filtrada$Zeros[i] == 1) {
      
      Num_UF$Res_Ind[is.na(Num_UF$Res_Ind)] <-0
      Num_RG$Res_Ind[is.na(Num_RG$Res_Ind)] <-0
      Num_BR$Res_Ind[is.na(Num_BR$Res_Ind)] <-0
      Num_CGR$Res_Ind[is.na(Num_CGR$Res_Ind)] <-0
      
    }
    
    #Imputa NA se ocorrer um infinito
    Num_UF$Res_Ind[!is.finite(Num_UF$Res_Ind)] <-0
    Num_RG$Res_Ind[!is.finite(Num_RG$Res_Ind)] <-0
    Num_BR$Res_Ind[!is.finite(Num_BR$Res_Ind)] <-0
    Num_CGR$Res_Ind[!is.finite(Num_CGR$Res_Ind)] <-0
    
    

  }
  
  Final_Num_UF <-rbindlist(list(Num_UF,Final_Num_UF))
  Final_Num_RG <-rbindlist(list(Num_RG,Final_Num_RG))
  Final_Num_BR <-rbindlist(list(Num_BR,Final_Num_BR))
  Final_Num_CGR <-rbindlist(list(Num_CGR,Final_Num_CGR))
}


#Salva as bases produzidas
write.csv2(Final_Num_UF,'~/Proadess/Base_Final_Proadess/Base_completa_LONG_UF.csv', row.names=F)
write.csv2(Final_Num_RG,'~/Proadess/Base_Final_Proadess/Base_completa_LONG_RG.csv', row.names=F)
write.csv2(Final_Num_BR,'~/Proadess/Base_Final_Proadess/Base_completa_LONG_BR.csv', row.names=F)
write.csv2(Final_Num_CGR,'~/Proadess/Base_Final_Proadess/Base_completa_LONG_CGR.csv', row.names=F)


#Página PROADESS - Organiza bases e dicionários no padrão de importação da página
##########################################################################
#Salva uma nova base com os padrões de importação da página do PROADESS
source('~/Proadess/6_Base_formato_pagina.R')
##########################################################################


######################################################
#Remoção de objetos
rm(ANOI)
rm(list = c('Den_MUN','Den_UF','Den_RG','Den_BR','Den_CGR'))
rm(list = c('Num_MUN','Num_UF','Num_RG','Num_BR','Num_CGR'))
rm(list = c('Tab_Padrao_UF','Tab_Padrao_RG','Tab_Padrao_BR','Tab_Padrao_CGR'))
rm(Resultado_Selecao)
rm(list = c('UF','RG','BR'))
rm(list = c('MaxDen','MaxND','MaxNum'))
rm(list = c('NNum','NDen'))
rm(list = c('i','j'))
rm(list = c('Cod_Indicador_Parte1','Cod_Indicador_Parte2'))

######################################################

