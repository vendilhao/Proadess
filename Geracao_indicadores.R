#Geracao de um banco de dados com os indicadores de cada base(SIM,SINASC...)
#Um loop repete as queries e armazena os resultados das buscas em um único dataframe

library("elastic") 

connect(es_host = "elasticsearch.icict.fiocruz.br", es_port = 8201, es_user = "r_user", es_pwd = "r_user", es_transport_schema = "https")

#Funcao que transforma as saidas do elastic em dataframes, com identificacao do indicador, ano e mun
source('~/Proadess_SIM/Tabela_Ano_Mun.R')


#Selecoes_SIM-queries
source('~/Proadess_SIM/Selecoes_SIM.R')



#Futuramente as bases de selecao dos diferentes sistemas podem ser reunidas em um unico
#arquivo, com identificacao adequada. No momento, os testes serao feitos em cima do SIM
#- no objeto "Selecoes_SIM"

resultado<-NULL

for (i in 1: dim(Selecoes_SIM)[[1]]){
  
  #A query atual no loop
  q<-Selecoes_SIM[[2]][i]
  
  "O id da query atual"
  indicador<-Selecoes_SIM[[1]][i]
  
  #Resultado da query
  resultado_query<-Search(index = "datasus-sim", body = q, asdf = TRUE, size = 0)
  
  #Rbind que aumenta o dataframe(transformacao do resultado_query) ao passar do loop
  #O uso do try se faz necessario, pois no momento algumas selecoes nao contam
  #com a variavel necessaria no banco de dados(Idade em dias)
  try(resultado<-rbind(resultado,cbind(tabela_ano_mun(resultado_query),"Ind"=indicador)))
  

}

#Finaliza com uma ordenacao das colunas do dataframe resultado
setcolorder(resultado, c("Munic_res", "Ano", "Ind", "Freq"))



