#Aqui monta-se um dataframe com as seleções do SIM, com o nome do indicador e a query, no objeto Selecoes_SIM

Selecoes_SIM <- NULL

################M01_N_SIM: Mortalidade infantil - com menos de um ano.################M
#Id do indicador:"M01_N_SIM"
#Filtro1-Idade em anos: 0
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "M01_N_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "filter":{
  "term":{ "idade_obito": 0
  }
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################M01_N_SIM: Mortalidade infantil - com menos de um ano.################M

Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))



################M02_N_SIM: Mortalidade infantil - Até 6 dias.#################
#Id do indicador:"M02_N_SIM"
#Filtro2-Idade em dias: 0 a 6
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "M02_N_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "filter":{
  "range":{ "idade em dias":{ "from":0 , "to":6}
  }
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################M02_N_SIM: Mortalidade infantil - Até 6 dias.#################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))


################M03_N_SIM: Mortalidade infantil - De 7 Até 27 dias.#################
#Id do indicador:"M03_N_SIM"
#Filtro2-Idade em dias: 0 a 27
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "M03_N_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "filter":{
  "range":{ "idade em dias":{ "from":0 , "to":27}
  }
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################M03_N_SIM: Mortalidade infantil - de 7 Até 27 dias.#################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))



################M04_N_SIM: Mortalidade infantil - De 28 Até 364 dias.#################
#Id do indicador:"M04_N_SIM"
#Filtro2-Idade em dias: 0 a 364
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "M04_N_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "filter":{
  "range":{ "idade em dias":{ "from":0 , "to":364}
  }
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################M04_N_SIM: Mortalidade infantil - De 28 Até 364 dias.#################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))

################M05_N_SIM: Mortalidade Diarreica - De 0 Até 4 anos.#################
#Id do indicador:"M05_N_SIM"
#Filtro1-Idade em anos : 0 a 4
#Filtro2-CAUSABASICA:A0??
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "M05_N_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{ "wildcard": {"CAUSABAS":"A0??"} },
  "filter":{"range":{"idade_obito":{ "gte":0, "lte":4 }}
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################M05_N_SIM: Mortalidade Diarreica - De 0 Até 4 anos.#################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))



################M05_D_SIM: Mortalidade Diarreica - De 0 Até 4 anos.#################
#Id do indicador:"M05_D_SIM"
#Filtro1-Idade em anos : 0 a 4
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "M05_D_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "filter":{"range":{"idade_obito":{ "gte":0, "lte":4 }}
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################M05_D_SIM: Mortalidade Diarreica - De 0 Até 4 anos.#################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))

################M06_N_SIM: Mortalidade Causas Externas ############################
#Id do indicador:"M06_N_SIM"
#Filtro1-CAUSABASICA: ["V*" ou "X*" ou "W*" ou "Y*"] 
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "M06_N_SIM",
  '{"size":0,
  "query":{
  "bool": { "should": [ {"wildcard": {"CAUSABAS":"V*"}},
  {"wildcard": {"CAUSABAS":"X*"}},
  {"wildcard": {"CAUSABAS":"W*"}},
  {"wildcard": {"CAUSABAS":"Y*"}}
  ]
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################M06_N_SIM: Mortalidade Causas Externas ############################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))


################M07_N_SIM: Mortalidade Aparelho Circulatorio ############################
#Id do indicador:"M07_N_SIM"
#Filtro1-CAUSABASICA: ["I*"] 
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "M07_N_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{ "wildcard": {"CAUSABAS":"I*"}
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################M07_N_SIM: Mortalidade Aparelho Circulatorio ############################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))




################M08_N_SIM: Mortalidade ISquemicas ############################
#Id do indicador:"M08_N_SIM"
#Filtro1-CAUSABASICA: ["I2*" ou "I3*" ou "I4*" ou "I5*"] 
#Agregacao1-Ano
#Agregacao2-Municipio de residencia
q <- c(
  "M08_N_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ {"wildcard": {"CAUSABAS":"I2*"}},
  {"wildcard": {"CAUSABAS":"I3*"}},
  {"wildcard": {"CAUSABAS":"I4*"}},
  {"wildcard": {"CAUSABAS":"I5*"}}
  ]
  }
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################M08_N_SIM: Mortalidade ISquemicas ############################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))


################M09_N_SIM: Mortalidade AVE ############################
#Id do indicador:"M09_N_SIM"
#Filtro1-CAUSABASICA: ["I6*" ou "I7*" ou "I8*" ou "I9*"] 
#Agregacao1-Ano
#Agregacao2-Municipio de residencia
q <- c(
  "M09_N_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ {"wildcard": {"CAUSABAS":"I6*"}},
  {"wildcard": {"CAUSABAS":"I7*"}},
  {"wildcard": {"CAUSABAS":"I8*"}},
  {"wildcard": {"CAUSABAS":"I9*"}}
  ]
  }
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################M09_N_SIM: Mortalidade AVE ############################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))




################M10_N_SIM: Mortalidade Cancer Utero ############################
#Id do indicador:"M10_N_SIM"
#Filtro1-CAUSABASICA: ["C53*"] 
#Agregacao1-Ano
#Agregacao2-Municipio de residencia
q <- c(
  "M10_N_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{ "wildcard": {"CAUSABAS":"C53*"}
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################M10_N_SIM: Mortalidade Cancer Utero ############################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))



################M11_N_SIM: Mortalidade Cancer Mama ############################
#Id do indicador:"M11_N_SIM"
#Filtro1-Sexo: "Feminino"
#Filtro2-CAUSABASICA: ["C50?"] 
#Agregacao1-Ano
#Agregacao2-Municipio de residencia
q <- c(
  "M11_N_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "must": [ {"wildcard": {"CAUSABAS":"C50?"}},
  {"match": {"def_sexo":"Feminino"}}
  
  ]
  }
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################M11_N_SIM: Mortalidade Cancer Mama ############################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))


################M12_N_SIM: Mortalidade Cancer Prostata ############################
#Id do indicador:"M12_N_SIM"
#Filtro1-Sexo: "Masculino"
#Filtro2-CAUSABASICA: ["C61?"] 
#Agregacao1-Ano
#Agregacao2-Municipio de residencia
q <- c(
  "M12_N_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "must": [ {"wildcard": {"CAUSABAS":"C61?"}},
  {"match": {"def_sexo":"Masculino"}}
  
  ]
  }
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################M12_N_SIM: Mortalidade Cancer Prostata ############################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))


################M13_N_SIM: Mortalidade Suicidio ############################
#Id do indicador:"M13_N_SIM"
#Filtro1-CAUSABASICA: ["X6*" ou "X7*" ou "X80*" ou "X81*" ou "X82*" ou "X83*" ou "X84*" ou "Y87*" ] 
#Agregacao1-Ano
#Agregacao2-Municipio de residencia
q <- c(
  "M13_N_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ {"wildcard": {"CAUSABAS":"X6*"}},
  {"wildcard": {"CAUSABAS":"X7*"}},
  {"wildcard": {"CAUSABAS":"X80*"}},
  {"wildcard": {"CAUSABAS":"X81*"}},
  {"wildcard": {"CAUSABAS":"X82*"}},
  {"wildcard": {"CAUSABAS":"X83*"}},
  {"wildcard": {"CAUSABAS":"X84*"}},
  {"wildcard": {"CAUSABAS":"Y87*"}}
  ]
  }
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################M13_N_SIM: Mortalidade Suicidio ############################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))


################M14_N_SIM: Mortalidade Transporte terrestre ############################
#Id do indicador:"M14_N_SIM"
#Filtro1-CAUSABASICA: ["V*", sem conter "V9*"] 
#Agregacao1-Ano
#Agregacao2-Municipio de residencia
q <- c(
  "M14_N_SIM",
  '{"size":0,
  "query":{
  "bool": { "must":  {"wildcard": {"CAUSABAS":"V*"}},
  "must_not":  {"wildcard": {"CAUSABAS":"V9*"}}
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################M14_N_SIM: Mortalidade Transporte terrestre ############################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))



################B05_N_SIM: Mortalidade Diarreica - até 1 ano.#################
#Id do indicador:"B05_N_SIM"
#Filtro1-CAUSABASICA: ["V*", sem conter "V9*"] 
#Filtro2-Idade em anos: até 1 ano
#Agregacao1-Ano
#Agregacao2-Municipio de residencia
q <- c(
  "B05_N_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{ "wildcard": {"CAUSABAS":"A0??"} },
  "filter":{"range":{"idade_obito":{ "gte":0, "lte":1 }}
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################B05_N_SIM: Mortalidade Diarreica - De 0 Até 4 anos.#################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))


################B06_N2_SIM: Mortalidade Hipertensao 50 até 64 anos ############################
#Id do indicador:"B06_N2_SIM"
#Filtro1-CAUSABASICA: ["I10*"ou "I11*" ou "I12*" ou "I13*"] 
#Filtro2-Idade em anos: 50 a 64
#Agregacao1-Ano
#Agregacao2-Municipio de residencia
q <- c(
  "B06_N2_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ {"wildcard": {"CAUSABAS":"I10*"}},
  {"wildcard": {"CAUSABAS":"I11*"}},
  {"wildcard": {"CAUSABAS":"I12*"}},
  {"wildcard": {"CAUSABAS":"I13*"}}
  
  ]
  }
  },
  "filter":{"range":{"idade_obito":{ "gte":50, "lte":64 }}
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################B06_N2_SIM: Mortalidade Hipertensao 50 até 64 anos ############################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))


################B06_N_SIM: Mortalidade Hipertensao 20 até 79 anos ############################
#Id do indicador:"B06_N_SIM"
#Filtro1-CAUSABASICA: ["I10*"ou "I11*" ou "I12*" ou "I13*"] 
#Filtro2-Idade em anos: 20 a 79
#Agregacao1-Ano
#Agregacao2-Municipio de residencia
q <- c(
  "B06_N_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ {"wildcard": {"CAUSABAS":"I10*"}},
  {"wildcard": {"CAUSABAS":"I11*"}},
  {"wildcard": {"CAUSABAS":"I12*"}},
  {"wildcard": {"CAUSABAS":"I13*"}}
  
  ]
  }
  },
  "filter":{"range":{"idade_obito":{ "gte":20, "lte":79 }}
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################B06_N_SIM: Mortalidade Hipertensao 20 até 79 anos ############################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))

################B07_N_SIM: Mortalidade Ira até 4 anos ############################
#Id do indicador:"B07_N_SIM"
#Filtro1-CAUSABASICA: ["J21*"ou "J22*"] 
#Filtro2-Idade em anos: 0 a 4
#Agregacao1-Ano
#Agregacao2-Municipio de residencia
q <- c(
  "B07_N_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ {"wildcard": {"CAUSABAS":"J21*"}},
  {"wildcard": {"CAUSABAS":"J22*"}}
  ]
  }
  },
  "filter":{"range":{"idade_obito":{ "gte":0, "lte":4 }}
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################B07_N_SIM: Mortalidade Ira até 4 anos ############################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))


################B16_N_SIM: Mortalidade Diabetes 20 até 79 anos ############################
#Id do indicador:"B16_N_SIM"
#Filtro1-CAUSABASICA: ["E10*" ou "E11*" ou "E12*" ou "E13*" ou "E14*"] 
#Filtro2-Idade em anos: 20 a 79
#Agregacao1-Ano
#Agregacao2-Municipio de residencia
q <- c(
  "B16_N_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ {"wildcard": {"CAUSABAS":"E10*"}},
  {"wildcard": {"CAUSABAS":"E11*"}},
  {"wildcard": {"CAUSABAS":"E12*"}},
  {"wildcard": {"CAUSABAS":"E13*"}},
  {"wildcard": {"CAUSABAS":"E14*"}}
  ]
  }
  },
  "filter":{"range":{"idade_obito":{ "gte":20, "lte":79 }}
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  }
  }
  }
  }'
)
################B16_N_SIM: Mortalidade Diabetes 20 até 79 anos ############################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))



################B16_N2_SIM: Mortalidade Diabetes  ############################
#Id do indicador:"B16_N2_SIM"
#Filtro1-CAUSABASICA: ["E10*" ou "E11*" ou "E12*" ou "E13*" ou "E14*"] 
#Agregacao1-Ano
#Agregacao2-Municipio de residencia
q <- c(
  "B16_N2_SIM",
  '{"size":0,
  "query":{
  "bool": {
  "should": [ {"wildcard": {"CAUSABAS":"E10*"}},
  {"wildcard": {"CAUSABAS":"E11*"}},
  {"wildcard": {"CAUSABAS":"E12*"}},
  {"wildcard": {"CAUSABAS":"E13*"}},
  {"wildcard": {"CAUSABAS":"E14*"}}
  ]
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################B16_N2_SIM: Mortalidade Diabetes  ############################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))


################B18_N_SIM: Mortalidade Materna 10 até 49 anos ############################
#Id do indicador:"B18_N_SIM"
#Filtro1-CAUSABASICA: ["A34*" ou "O*", sem a presenca de O96 e O97] 
#Filtro2-Idade em anos: 10 a 49
#Agregacao1-Ano
#Agregacao2-Municipio de residencia
q <- c(
  "B18_N_SIM",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": {
  "should": [ {"wildcard": {"CAUSABAS":"A34*"}},{"wildcard": {"CAUSABAS":"O*"}}],
  "must_not":[{"wildcard": {"CAUSABAS":"O96*"}},{"wildcard": {"CAUSABAS":"O97*"}}]
  }
  },
  "filter":{"range":{"idade_obito":{ "gte":10, "lte":49 }}
  }
  }
  },
  "aggs":{
  "Ano":{
  "terms":{"field":"ano_obito", "size":0
  },
  "aggs":{
  "Munic_res":{
  "terms":{"field":"res_codmun_adotado", "size":0
  }
  }
  
  }
  }
  }
  }'
)
################B18_N_SIM: Mortalidade Materna 10 até 49 anos ############################
Selecoes_SIM <-
  rbind(Selecoes_SIM,
        data.frame(
          "Indicador" = q[1],
          "Query" = q[2],
          stringsAsFactors = F
        ))



#Finaliza identificando o sistema
Selecoes_SIM <- cbind(Selecoes_SIM,"Sistema"="SIM", stringsAsFactors = F)

