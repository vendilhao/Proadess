# Recebe o objeto agregado na orderm ANO e MUNICIPIO.
#faz um loop pelos dataframes e adiciona o ano
#no passo seguinte a biblioteca data.table faz um unlist, deixando a base organizada
#em um unico dataframe
#Funcao1: "tabela_ano_mun"
#Funcao2: "Regrasmun"

library("data.table")

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



