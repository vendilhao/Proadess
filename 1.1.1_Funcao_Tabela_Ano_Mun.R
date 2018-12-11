# Recebe o objeto agregado na orderm ANO e MUNICIPIO.
#faz um loop pelos dataframes e adiciona o ano
#no passo seguinte a biblioteca data.table faz um unlist, deixando a base organizada
#em um unico dataframe

#Script de origem:2_Geracao_Selecoes.R

#Funcao1: "tabela_ano_mun"
#Funcao2: "Regrasmun"
#Funcao3: "Ficha_primaria"
#Funcao4: "Ficha_secundaria"

library("data.table")

########################################################################################################################
tabela_ano_mun <- 
  function(numerador){
    anos <- 
      numerador$aggregations$Ano$buckets$key
    
    tabtemp<-NULL
    
    for (i in 1:length(anos)){
      
      numerador$aggregations$Ano$buckets$Munic_res.buckets[[i]]<-
        
        cbind(numerador$aggregations$Ano$buckets$Munic_res.buckets[[i]],
              "Ano"=anos[i])
    }
    
    tabela <- data.table::rbindlist(numerador$aggregations$Ano$buckets$Munic_res.buckets)
    
    names(tabela)[1]<-"Munic_res"
    names(tabela)[2]<-"Freq"
    
    
    
    
    
    
    return(tabela) 
    
  } 
########################################################################################################################




########################################################################################################################
#Recodifica alguns municípios

Regrasmun <- function (var1) {
  
  var1[var1=="179999"] <- "170000"
  var1[var1=="170172"] <- "170000"
  var1[var1=="171350"] <- "170000"
  var1[var1=="172206"] <- "170000"
  
  var1[substring(var1,1,2)=="53"] <- "530010"
  
  
  var1[var1>=334501 & var1<= 334530] <- "330455"
  
  var1[var1=="339999"] <- "330000"
  var1[var1=="330064"] <- "330000"
  
  
  var1[var1>=358001 & var1<= 358058] <- "355030"
  
  var1[var1=="430145"] <- "431454"
  var1[var1=="431453"] <- "431454"
  
  
  var1
}
########################################################################################################################





########################################################################################################################
#Gera a ficha primária para a página do PROADESS
Ficha_primaria <- function(base , objficha) {
  

  #Faz uma limpeza no arquivo. Em edições manuais, surgem linhas vazias.
  objficha <-
    objficha[!apply(objficha, 1, function(x)
      all(is.na(x) | x == "")), ]
  
  #Objeto que carrega o subset do indicador a ser consultado
  Temp <- NULL
  #O Ano inicial
  ANOINICIAL <- NULL
  #O Ano final
  ANOFINAL <- NULL
  
  
  
  # Loop que adiciona o ano inicial e final na ficha de cada indicador
  for (i in 1:length(objficha$cod_ind_p)) {
    #Busca na base o ano inicial e final de cada indicador
    Temp <-
      base[substring(base$Cod_indicador, 1, 3) == objficha$cod_ind_p[i], ]
    
    #Se o indicador existir, preencherá o ano inicial e final na ficha
    if (length(Temp$Ano) == 0) {
      objficha$period_c_p[i] <- NA
      objficha$periodo_inic[i] <- NA
      objficha$periodo_fin[i] <- NA
      
      
    } else {
      ANOINICIAL <- min (unique(Temp$Ano))
      ANOFINAL <- max (unique(Temp$Ano))
      objficha$period_c_p[i] <- paste0(ANOINICIAL, " - ", ANOFINAL)
      #Preenche o campo com o ano inicial
      objficha$periodo_inic[i] <- ANOINICIAL
      #Preenche o campo com o ano final
      objficha$periodo_fin[i] <- ANOFINAL
    }
    
  }
  
  #Ficamos somente com os indicadores feitos
  objficha <-
    objficha[!is.na(objficha$periodo_inic), ]
  
  return(objficha)
  
  
}
########################################################################################################################




########################################################################################################################
#Função que gera a ficha secundária para a página do PROADESS
#Cabe ressaltar que o cógido da ficha secundária é uma transformação dos códigos dos indicadores da base de dados, sem a informação
#do ano
#Ao final, obtém-se uma ficha com textos que alimentam as tabelas da página


Ficha_secundaria<-function(base,texto_tabelas,FichaP){
  
  #base: base de dados
  #texto_tabelas: tabela "Textos_Tabelas_Secundario" - na pasta "/Tabelas_Auxiliares/Fichas/Secundario"
  #Fichap: A ficha primária da abrangência
  
  #ordem dos codigos no dicionário secundário
  #1-Indicador(1) (3 digs - 1 ao 3):X99
  #2-Masc/Fem(5) ( 1 digs - 9 ao 9):1/2
  #3-Escolaridade(6) ( 4 digs - 10 ao 13):0000
  #4-Bruto/Padronizado(8) ( 1 digs - 18 ao 18):B/P
  #5-Sus/Tot(2) ( 1 digs - 4 ao 4):1/0
  #6-Urbano/Rural(3) ( 1 digs - 5 ao 5):1/2
  #7-Quintil(4) ( 1 digs - 6 ao 6):1/2/3/4/5
  #8-Idade(7) ( 4 digs - 14 ao 17):0000
  #9-Espec(9) ( 4 digs - 19 ao 19):A-P
  #10-Mun/Est/Fed(10) ( 4 digs - 20 ao 20):1/2/3
  #11-Vazio(11) ( 1 digs - 21 ao 21):0
  

  #Faz um unique apenas do ano e do Cod_indicador
  base<-unique(base[,c(2,6)])  
  #faz um unique dos códigos dos indicadores e dos anos da base de dados
  #Ano
  anounico<-base$Ano
  #Cod_indicador
  codunico <- base$Cod_indicador
  
  #Adiciona ao objeto uma nova codificação, que segue a ordem descrita acima
  codunico<-cbind.data.frame("cod_sec" = codunico,"cod_sec_inter" = paste0(substring(codunico,1,3),substring(codunico,9,9),
                                                                           substring(codunico,10,13),substring(codunico,18,18),substring(codunico,4,4),
                                                                           substring(codunico,5,5),substring(codunico,6,6),substring(codunico,14,17),
                                                                           substring(codunico,19,19),substring(codunico,20,20),substring(codunico,21,21)),stringsAsFactors=F)

  
  #Traz as informações da base de textos.
  codunico<-merge(codunico,texto_tabelas,by="cod_sec_inter", all.x=T)
  
  #Adiciona um id a cada linha, na primeira coluna
  codunico<- cbind("id" = 1:(dim(codunico)[1]),codunico)
  
  #Modifica a informação da coluna ano
  codunico$ano <-anounico
  
  #Adiciona uma coluna de escolaridade e Idade
  codunico<-cbind(codunico,"O.ESC"=0)
  codunico<-cbind(codunico,"O.IDA"=0)
  
  #Alimenta a coluna com a ordenação das faixas de escolaridade, a partir da coluna cod_sec_inter
  codunico$O.ESC[substring(codunico[[2]],10,13) == "1111"] <-1
  codunico$O.ESC[substring(codunico[[2]],10,13) == "0008"] <-1  
  codunico$O.ESC[substring(codunico[[2]],10,13) == "0108"] <-2
  codunico$O.ESC[substring(codunico[[2]],10,13) == "0911"] <-3
  codunico$O.ESC[substring(codunico[[2]],10,13) == "1200"] <-4
  
  #Alimenta a coluna com a ordenação das faixas de idade, a partir da coluna cod_sec_inter
  codunico$O.IDA[substring(codunico[[2]],14,17) == "1824"] <-1
  codunico$O.IDA[substring(codunico[[2]],14,17) == "2534"] <-2
  codunico$O.IDA[substring(codunico[[2]],14,17) == "3544"] <-3
  codunico$O.IDA[substring(codunico[[2]],14,17) == "4554"] <-4
  codunico$O.IDA[substring(codunico[[2]],14,17) == "5564"] <-5
  codunico$O.IDA[substring(codunico[[2]],14,17) == "6500"] <-6
  
  #Faz a ordenação pelo substring(do 1 ao 3 - código do indicador) da coluna cod_sec_inter, 
  #do ano(codunico[[7]]), 
  #pelo substring(do 6 ao 6 - rural/urbano) da coluna cod_sec_inter,
  #pela ordem de escolaridade da coluna O.ESC,
  #pela ordem de idade da coluna O.IDA
  #Essa ordenação influencia a consulta na página do PROADESS
  codunico<-codunico[order(substring(codunico[[2]],1,3),codunico[[7]],substring(codunico[[2]],6,6),codunico$O.ESC,codunico$O.IDA),]
  
  #Faz um filtro para deixar somente indicadores que estão também na ficha primária
  codunico<-codunico[substring(codunico$cod_sec,1,3) %in% unique(FichaP$cod_ind_p),]
  
  return(codunico)
}

########################################################################################################################
