#Formata a base para a página do Proadess e gera as suas fichas
#Basicamente, passa do formato long para colunas


#Script de origem:1_Geracao_indicadores.R

#Objetos de entrada
#Objeto1:Final_Num_CGR
#Objeto2:Final_Num_UF
#Objeto1:Final_Num_RG
#Objeto1:Final_Num_BR

#Objetos de Saída
#Objeto1:Final_Num_CGR_PAGINA
#Objeto2:Final_Num_UF_PAGINA
#Objeto3:Final_Num_RG_PAGINA
#Objeto4:Final_Num_BR_PAGINA
#Objeto5:Ficha_Primaria_UF_RG_BR
#Objeto6:Ficha_Secundaria_UF_RG_BR
#Objeto7:Ficha_Primaria_CGR
#Objeto8:Ficha_Secundaria_CGR


library(reshape2)




#Passa as bases para o formato coluna
#CGR
Final_Num_CGR_PAGINA<-dcast(Final_Num_CGR, Cgr ~ Cod_indicador, value.var="Res_Ind")

#####################################################################################################
#Na Cgr trazemos os nomes dos das regiões
#São adicionados os estados e uma coluna "Nome_municipio" só para atender aos padrões de importação
#Nomes também são alterados (das variáveis)

Cirs_Nomes <- read.csv2('~/Proadess/Tabelas_Auxiliares/Lista_Cirs.csv', stringsAsFactors = F,colClasses=c("Mun"="character"))
Cirs_Nomes <- unique(Cirs_Nomes [,2:6])
#Retira regiões n encontradas
Cirs_Nomes<-Cirs_Nomes[Cirs_Nomes[[1]]!=99999,]
Cirs_Nomes <-cbind(Cirs_Nomes ,"Municipio"="","Nome_muinicipio"="")
Cirs_Nomes <-cbind(Cirs_Nomes ,"Cod_regiao" = substring(Cirs_Nomes [[1]],1,1))
Cirs_Nomes <-Cirs_Nomes [,c(1,2,8,3,6,5,7)]

#Alterar pra regiao
names(Cirs_Nomes)[1] <- "REGIAO"
names(Cirs_Nomes)[2] <- "Cod_estado"
names(Cirs_Nomes)[3] <- "Cod_regiao"
names(Cirs_Nomes)[4] <- "Estado"
names(Cirs_Nomes)[5] <- "Municipio"
names(Cirs_Nomes)[6] <- "Nome_cgr"
names(Cirs_Nomes)[7] <- "Nome_municipio"

#Merge com os nomes das regiões
Final_Num_CGR_PAGINA<-merge(Cirs_Nomes,Final_Num_CGR_PAGINA,by.x="REGIAO", by.y="Cgr", all.x=T)
#Ao final, é adicionado uma coluna para indicar o fim da base
Final_Num_CGR_PAGINA<-cbind(Final_Num_CGR_PAGINA,"Falso"=1)

#Salva uma nova base com os padrões de importação da página do PROADESS - CGR
write.csv2(Final_Num_CGR_PAGINA,"~/Proadess/Base_Final_Proadess/Base_Pagina_COLUNA_CGR.csv",row.names=F,na="-1")

#######################################################################################################


#Passa as bases para o formato coluna
#UF
#RG
#BR
######################################################################################################
Final_Num_UF_PAGINA<-dcast(Final_Num_UF, UF ~ Cod_indicador, value.var="Res_Ind")
Final_Num_UF_PAGINA<-cbind(Final_Num_UF_PAGINA,"Falso"=1)

Final_Num_RG_PAGINA<-dcast(Final_Num_RG, RG ~ Cod_indicador, value.var="Res_Ind")
Final_Num_RG_PAGINA<-cbind(Final_Num_RG_PAGINA,"Falso"=1)

Final_Num_BR_PAGINA<-dcast(Final_Num_BR, BR ~ Cod_indicador, value.var="Res_Ind")
Final_Num_BR_PAGINA<-cbind(Final_Num_BR_PAGINA,"Falso"=1)


#Salva uma nova base com os padrões de importação da página do PROADESS - UF RG BR
write.csv2(Final_Num_UF_PAGINA,"~/Proadess/Base_Final_Proadess/Base_Pagina_COLUNA_UF.csv",row.names=F,na="-1")
write.csv2(Final_Num_RG_PAGINA,"~/Proadess/Base_Final_Proadess/Base_Pagina_COLUNA_RG.csv",row.names=F,na="-1")
write.csv2(Final_Num_BR_PAGINA,"~/Proadess/Base_Final_Proadess/Base_Pagina_COLUNA_BR.csv",row.names=F,na="-1")
#####################################################################################################



######################################################################################################
#Geração de fichas - UF RG BR CGR
######################################################################################################

#Ficha primária - UF RG BR
######################################################################################################
#Importação da ficha primária UF RG BR
Ficha_UF_RG_BR<-read.csv2("~/Proadess/Tabelas_Auxiliares/Fichas/Primario/Primario_UF_RG_BR.csv", stringsAsFactors = F)

#Finalização chamando a função que gera a ficha primária
#Essa ficha, contém uma atualização da ficha de entrada, com anos iniciais e finas
#Além de ser filtrada por indicadores que foram calculados

Ficha_UF_RG_BR <- Ficha_primaria(Final_Num_BR,Ficha_UF_RG_BR)

write.csv2(Ficha_UF_RG_BR,"~/Proadess/Base_Final_Proadess/Ficha_Primaria_UF_RG_BR_ANOI_ANOF.csv",row.names=F,na="")
#####################################################################################################


#Ficha primária - CGR
######################################################################################################
#Importação da ficha primária UF RG BR
Ficha_CGR<-read.csv2("~/Proadess/Tabelas_Auxiliares/Fichas/Primario/Primario_CGR.csv", stringsAsFactors = F)

#Finalização chamando a função que gera a ficha primária
#Essa ficha, contém uma atualização da ficha de entrada, com anos iniciais e finas
#Além de ser filtrada por indicadores que foram calculados

Ficha_CGR<- Ficha_primaria(Final_Num_CGR,Ficha_CGR)

write.csv2(Ficha_CGR,"~/Proadess/Base_Final_Proadess/Ficha_Primaria_CGR_ANOI_ANOF.csv",row.names=F,na="")


######################################################################################################




#Ficha Secundária - UF RG BR CGR
######################################################################################################
#Importação dos textos das tabelas UF RG BR CGR
Textos_Tabelas_Secundario <- read.csv2("~/Proadess/Tabelas_Auxiliares/Fichas/Secundario/Textos_Tabelas_Secundario.csv",stringsAsFactors = F)

#Executa a função Ficha_Secundária para UF, RG, BR e CGR
Ficha_Secundaria_UF_RG_BR<-Ficha_secundaria(Final_Num_BR,Textos_Tabelas_Secundario,Ficha_UF_RG_BR)
Ficha_Secundaria_CGR<-Ficha_secundaria(Final_Num_CGR,Textos_Tabelas_Secundario,Ficha_CGR)


write.csv2(Ficha_Secundaria_UF_RG_BR,"~/Proadess/Base_Final_Proadess/Ficha_Secundaria_UF_RG_BR.csv",row.names=F,na="")
write.csv2(Ficha_Secundaria_CGR,"~/Proadess/Base_Final_Proadess/Ficha_Secundaria_CGR.csv",row.names=F,na="")
#####################################################################################################

######################################################
#Remoção de objetos
rm(list = c('Cirs','Cirs_Nomes','Ficha_Selecao_Filtrada'))
rm(list = c('Final_Num_BR','Final_Num_UF','Final_Num_RG','Final_Num_BR','Final_Num_CGR'))
rm(list = c('Final_Num_BR_PAGINA','Final_Num_UF_PAGINA','Final_Num_RG_PAGINA','Final_Num_BR_PAGINA','Final_Num_CGR_PAGINA'))
rm(Textos_Tabelas_Secundario)
######################################################

