#Faz uma varredura na ficha dos indicadores, e retorna uma lista possível de serem feitos com o "Selecoes"
#A verificação só é váliva para o indicador, se ele é diferente de 1.
#Gera-se uma ficha filtrada, só com o que será tabulado

#O Objeto "Selecoes" é usado para comparações.
#Objeto Final1: Ficha_Selecao_Filtrada
#Objeto FInal2: Ficha_Selecao_Filtrada_Nome

Ficha_Selecao <-read.csv2('~/Proadess/Tabelas_auxiliares/Lista_test.csv', colClasses=c("Ag_ESCOLARIDADE"="character","Ag_IDADE"="character"), stringsAsFactors = F)

N_indicadores <-dim(Ficha_Selecao)[1]

lista_ok_indicadores<-NULL


for (i in 1:N_indicadores) {
  

  selecao_NUM<-strsplit(Ficha_Selecao$Ag_Numerador[i],";")[[1]]
  selecao_DEN<-strsplit(Ficha_Selecao$Ag_Denominador[i],";")[[1]]
  
  if (selecao_DEN[1] != 1) {
    
  
    if (all(selecao_NUM %in% Selecoes$Indicador) & all(selecao_DEN %in% Selecoes$Indicador)){
      
      lista_ok_indicadores <- rbind(lista_ok_indicadores,1)
    
    } else{lista_ok_indicadores <- rbind(lista_ok_indicadores,0)}
    
    
  }else {
    
    
    if (all(selecao_NUM %in% Selecoes$Indicador)){
      
      lista_ok_indicadores <- rbind(lista_ok_indicadores,1)
      
    }else{lista_ok_indicadores <- rbind(lista_ok_indicadores,0)}
    
  }
  
#print(c(i,selecao_NUM))
}

#Ficha de indicadores filtrada
Ficha_Selecao_Filtrada<-Ficha_Selecao[as.logical(lista_ok_indicadores),]



##########################################################################################################
#Os campos com os nomes das seleções na ficha carregam um ";", quando há mais de uma seleção
#para formar o indicador. Quando isto ocorre, é feita uma simples soma, como por exemplo a mortalidade
#Infantil, que no numerador tem a soma de seleções de diversas idades.

#Faz uma lista de todos as seleções necessárias para montar os indicadores.
#Essa lista servirá como filtro para sabermos o que é necessário consultar no servidor.
#É uma garantia de que indicadores abandonados não sejam tabulados novamente.

Ficha_Selecao_Filtrada_Nome_NUM<-sapply(Ficha_Selecao_Filtrada$Ag_Numerador, function(x){strsplit(x,";")})
Ficha_Selecao_Filtrada_Nome_NUM<-data.frame("Nome_selecao"=unique(unlist(Ficha_Selecao_Filtrada_Nome_NUM, recursive = T, use.names = F)))

Ficha_Selecao_Filtrada_Nome_DEN<-sapply(Ficha_Selecao_Filtrada$Ag_Denominador, function(x){strsplit(x,";")})
Ficha_Selecao_Filtrada_Nome_DEN<-data.frame("Nome_selecao"=unique(unlist(Ficha_Selecao_Filtrada_Nome_DEN, recursive = T, use.names = F)))

Ficha_Selecao_Filtrada_Nome<-rbind(unique(Ficha_Selecao_Filtrada_Nome_NUM),unique(Ficha_Selecao_Filtrada_Nome_DEN))

#########################################################################################################


#####################################################################
#Avisa dos indicadores que serão tabulados
print(paste0("Indicadores que serão tabulados: ", paste0(unique(Ficha_Selecao$cod_ind_p[as.logical(lista_ok_indicadores)]),collapse = ",")))

#Avisa dos indicadores que não serão tabulados
print(paste0("Indicadores que NÃO serão tabulados: ", paste0(unique(Ficha_Selecao$cod_ind_p[!as.logical(lista_ok_indicadores)]),collapse = ",")))


####################################################################


######################################################
#Remoção de objetos não necessários nas próximas etapas
rm(N_indicadores)
rm(Ficha_Selecao)
rm(i)
rm(selecao_DEN)
rm(selecao_NUM)
rm(lista_ok_indicadores)
rm(Ficha_Selecao_Filtrada_Nome_NUM)
rm(Ficha_Selecao_Filtrada_Nome_DEN)
######################################################





