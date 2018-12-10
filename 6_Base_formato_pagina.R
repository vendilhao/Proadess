#Formata a base para a página do Proadess
#Basicamente passa do formato long para colunas
#Restam somente a variável de abrangência e as colunas com indicadores
#Objetos de entrada
#Objeto1:Final_Num_CGR
#Objeto2:Final_Num_UF
#Objeto1:Final_Num_RG
#Objeto1:Final_Num_BR





library(reshape2)




#Passa as bases para o formato coluna
#CGR
Final_Num_CGR_PAGINA<-dcast(Final_Num_CGR, Cgr ~ Cod_indicador, value.var="Res_Ind")

#####################################################################################################
#Na Cgr trazemos os nomes dos das regiões
#São adicionados os estados e uma coluna "Nome_municipio" só para atender aos padrões de importação
#Nomes também são alterados (das variáveis)

Cirs_Nomes <- read.csv2('~/Proadess/Tabelas_auxiliares/Lista_Cirs.csv', stringsAsFactors = F,colClasses=c("Mun"="character"))
Cirs_Nomes <- unique(Cirs_Nomes [,2:6])
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
data<-merge(Cirs_Nomes,Final_Num_CGR_PAGINA)
#Ao final, é adicionado uma coluna para indicar o fim da base
Final_Num_CGR_PAGINA<-cbind(Final_Num_CGR_PAGINA,"Falso"=1)

#Salva uma nova base com os padrões de importação da página do PROADESS - CGR
write.csv2(Final_Num_CGR_PAGINA,"~/Proadess/Base_Final_Proadess/Base_Pagina_COLUNA_CGR.csv",row.names=F,na="-1")

#######################################################################################################

