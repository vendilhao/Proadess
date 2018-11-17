 # Recebe o objeto agregado na orderm ANO e MUNICIPIO.
#faz um loop pelos dataframes e adiciona o ano
#no passo seguinte a biblioteca data.table faz um unlist, deixando a base organizada
#em um unico dataframe

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




