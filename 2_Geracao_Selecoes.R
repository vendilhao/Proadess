#Em sua forma final, o script deverá gerar uma base com resultado das consultas
#de cada base de dados(sim, sinasc, pop...) para futuro RBIND.
#Esta base final será consultada pela ficha dos indicadores, com as indicações
#dos dados a serem utilizados.

#Script de origem:1_Geracao_indicadores.R

#Objeto Final1: Ficha_Selecao_Filtrada
#Objeto FInal2: Resultado_Selecao






#Geracao de um banco de dados com os indicadores de cada base(SIM,SINASC...)
#Um loop repete as queries e armazena os resultados das buscas em um único dataframe

library("elastic") 

connect(es_host = "elasticsearch.icict.fiocruz.br", es_port = 8201, es_user = "r_user", es_pwd = "r_user", es_transport_schema = "https")

#1 - Primeira funcao que transforma as saidas do elastic em dataframes, com identificacao do indicador, ano e mun
#2 - Segunda funcao que recodifica municípios
source('~/Proadess/3_Funcao_Tabela_Ano_Mun.R')



#Seleções dos diferentes sistemas devem ser agregadas aqui
#######################################################################################
#Selecoes_SIM-queries
#Traz o objeto Selecoes_SIM
source('~/Proadess/SIM/4_Selecoes_SIM.R')
#######################################################################################


#Futuramente as bases de selecao dos diferentes sistemas podem ser reunidas em um unico
#arquivo, com identificacao adequada. No momento, os testes serao feitos em cima do SIM
#- no objeto "Selecoes_SIM"

Selecoes<-Selecoes_SIM


####################################################
#Objetos usados para filtrar as selecoes necessárias
#Objeto Final1: Ficha_Selecao_Filtrada
#Objeto FInal2: Ficha_Selecao_Filtrada_Nome
source('~/Proadess/5_Ficha_Filtro.R')
###################################################


#Objeto "Seleções" filtrado
Selecoes<-Selecoes[Selecoes[[1]] %in% Ficha_Selecao_Filtrada_Nome[[1]],]




Resultado_Selecao<-NULL

for (i in 1: dim(Selecoes)[[1]]){
  
  #A query atual no loop
  q<-Selecoes[[2]][i]
  
  "O id da query atual"
  indicador<-Selecoes[[1]][i]
  
  #Resultado da query
  Resultado_Query<-Search(index = "datasus-sim", body = q, asdf = TRUE, size = 0)
  
  #Rbind que aumenta o dataframe(transformacao do resultado_query) ao passar do loop
  #O uso do try se faz necessario, pois no momento algumas selecoes nao contam
  #com a variavel necessaria no banco de dados(Idade em dias)
  try(Resultado_Selecao<-rbind(Resultado_Selecao,cbind(tabela_ano_mun(Resultado_Query),"Ind"=indicador)))
  
  
}

#Finaliza com uma ordenacao das colunas do dataframe resultado
setcolorder(Resultado_Selecao, c("Munic_res", "Ano", "Ind", "Freq"))

#Aplica a função "Regrasum"
Resultado_Selecao$Munic_res<-substring(Resultado_Selecao$Munic_res,1,6)
Resultado_Selecao$Munic_res<-Regrasmun(Resultado_Selecao$Munic_res)


#lista de seleções que foram realizadas no sistema
Selecoes_finalizadas<-unique(Resultado_Selecao$Ind)
#salva a lista
write.csv2(Selecoes_finalizadas,'~/Proadess/Base_Selecao_Mun/Selecoes_Finalizadas.csv', row.names=F)


#Salva a base resultado(com as Ficha_Selecao_Filtrada_Nomeconsultas no sistema)
write.csv2(Resultado_Selecao,'~/Proadess/Base_Selecao_Mun/Base_Selecao.csv', row.names=F)


#A partir daqui os objetos "Selecoes_finalizadas" e resultado
#Serao usados, junto de outras tabelas, como a ficha dos indicadores,
#a tabela de regiões de saúde e um csv com títulos para cada tabela gerada na
#página do proadess.


######################################################
#Remoção de objetos não necessários nas próximas etapas
rm(Selecoes_SIM)
rm(q)
rm(indicador)
rm(i)
rm(Resultado_Query)
rm(Selecoes_finalizadas)
rm(Ficha_Selecao_Filtrada_Nome)
rm(Selecoes)
######################################################


