# Proadess
Se copiarem a estrutura para o servidor(Rstudio), só é necessário executar o "Geracao_indicadores.R". 
Ele trará um database com as seleções do SIM, que se encontram na pasta "SIM".
O arquivo "Funcao_Tabela_Ano_Mun.R" contém uma função que organiza as seleções em um database, é chamada no script de geração.
Atualmente, o database é salvo na pasta "Base_Selecao_Mun"

Se forem adicionar um teste para população, perceberão que no "Geracao_indicadores.R" 
A linha 20 e 30 devem ser modificadas.

Na 20...Vejam que eu busco a seleção do "SIM" na pasta '~/Proadess/SIM/Selecoes_SIM.R'

#######################################
#Selecoes_SIM-queries
source('~/Proadess/SIM/Selecoes_SIM.R')
#######################################

Na 30...O objeto Selecoes recebe o resultado do "Selecoes_SIM".
Inicialmente, o objeto Selecoes será uma duplicação do "Selecoes_SIM", mas no futuro ele se tornará uma lista com as 
seleções de todos os sistemas.

Façam um similar "Selecoes_SIM" pra população, como o nome que desejarem, mas não equeçam de alterar a linha.

######################################
Selecoes<-Selecoes_SIM
######################################
