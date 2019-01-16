################ B15_N_SIH: Insuficiência Cardíaca: 40 anos ou mais.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#Id do indicador:"B15_N_SIH"
#Filtro1- 40 anos ou mais
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "B15_N_SIH",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  {"term": {"DIAG_PRINC":"I500"}},
  {"term": {"DIAG_PRINC":"I501"}},
  {"term": {"DIAG_PRINC":"I509"}},
  {"term": {"DIAG_PRINC":"J810"}},
  {"term": {"DIAG_PRINC":"J81"}},
  
  ]
  }
  },
  "filter":{"range":{"idade_obito":{ "gte":40 }}
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
################ B15_N_SIH: Insuficiência Cardíaca: 40 anos ou mais.#################


################ B13_N_SIH: Pneumonia: 18 anos ou mais.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#Id do indicador:"B13_N_SIH"
#Filtro1- 18 anos ou mais
#Agregacao1-Ano
#Agregacao2-Municipio de residencia




q <- c(
  "B13_N_SIH",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  {"term": {"DIAG_PRINC":"J13"}},
  {"term": {"DIAG_PRINC":"J130"}},
  {"term": {"DIAG_PRINC":"J14"}},
  {"term": {"DIAG_PRINC":"J140"}},
  {"term": {"DIAG_PRINC":"J153"}},
  {"term": {"DIAG_PRINC":"J154"}},
  {"term": {"DIAG_PRINC":"J158"}},
  {"term": {"DIAG_PRINC":"J159"}}

  ]
  }
  },
  "filter":{"range":{"idade_obito":{ "gte":18 }}
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
################ B13_N_SIH: Pneumonia: 18 anos ou mais.#################


################ B13_N20_SIH: Pneumonia: 20 anos ou mais.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#Id do indicador:"B13_N20_SIH"
#Filtro1- 20 anos ou mais
#Agregacao1-Ano
#Agregacao2-Municipio de residencia




q <- c(
  "B13_N20_SIH",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  {"term": {"DIAG_PRINC":"J13"}},
  {"term": {"DIAG_PRINC":"J130"}},
  {"term": {"DIAG_PRINC":"J14"}},
  {"term": {"DIAG_PRINC":"J140"}},
  {"term": {"DIAG_PRINC":"J153"}},
  {"term": {"DIAG_PRINC":"J154"}},
  {"term": {"DIAG_PRINC":"J158"}},
  {"term": {"DIAG_PRINC":"J159"}}
  
  ]
  }
  },
  "filter":{"range":{"idade_obito":{ "gte":20 }}
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
################ B13_N20_SIH: Pneumonia: 18 anos ou mais.#################


################ B14_N_SIH: Gastroenterite.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#Id do indicador:"B14_N_SIH"
#Agregacao1-Ano
#Agregacao2-Municipio de residencia


q <- c(
  "B14_N_SIH",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  {"wildcard": {"DIAG_PRINC":"A0*"}}
  
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
################ B14_N_SIH: Gastroenterite.#################


################ B12_N_SIH: Asma: 15 anos ou mais.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#Id do indicador:"B12_N_SIH"
#Filtro1- 15 anos ou mais
#Agregacao1-Ano
#Agregacao2-Municipio de residencia


q <- c(
  "B12_N_SIH",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  {"term": {"DIAG_PRINC":"J45"}},
  {"term": {"DIAG_PRINC":"J450"}},
  {"term": {"DIAG_PRINC":"J451"}},
  {"term": {"DIAG_PRINC":"J458"}},
  {"term": {"DIAG_PRINC":"J459"}},
  {"term": {"DIAG_PRINC":"J46"}},
  {"term": {"DIAG_PRINC":"J460"}}

  ]
  }
  },
  "filter":{"range":{"idade_obito":{ "gte":15 }}
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
################ B12_N_SIH: Asma: 15 anos ou mais.#################



################ A05_N_SIH: Internações.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#Id do indicador:"A05_N_SIH"
#Agregacao1-Ano
#Agregacao2-Municipio de residencia


q <- c(
  "A05_N_SIH",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  {"wildcard": {"DIAG_PRINC":"*"}}
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
################ A05_N_SIH: Internações.#################


################ G02_D_SIH: Fratura quadril: 50 anos ou mais.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#Id do indicador:"G02_D_SIH"
#Filtro1- 50 anos ou mais
#Agregacao1-Ano
#Agregacao2-Municipio de residencia


q <- c(
  "G02_D_SIH",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  {"term": {"DIAG_PRINC":"S720"}},
  {"term": {"DIAG_PRINC":"S721"}},
  {"term": {"DIAG_PRINC":"S722"}}
  ]
  }
  },
  "filter":{"range":{"idade_obito":{ "gte":50 }}
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
################ G02_D_SIH: Fratura quadril: 50 anos ou mais.#################


################ G02_D_50_59_SIH: Fratura quadril: 50 a 59 anos.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#Id do indicador:"G02_D_50_59_SIH"
#Filtro1- 50 a 59 anos
#Agregacao1-Ano
#Agregacao2-Municipio de residencia


q <- c(
  "G02_D_50_59_SIH",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  {"term": {"DIAG_PRINC":"S720"}},
  {"term": {"DIAG_PRINC":"S721"}},
  {"term": {"DIAG_PRINC":"S722"}}
  ]
  }
  },
  "filter":{"range":{"idade_obito":{ "gte":50, "lte":59 }}
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
################ G02_D_50_59_SIH: Fratura quadril: 50 a 59 anos.#################


################ G02_D_60_69_SIH: Fratura quadril: 60 a 69 anos.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#Id do indicador:"G02_D_60_69_SIH"
#Filtro1- 60 a 69 anos
#Agregacao1-Ano
#Agregacao2-Municipio de residencia


q <- c(
  "G02_D_60_69_SIH",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  {"term": {"DIAG_PRINC":"S720"}},
  {"term": {"DIAG_PRINC":"S721"}},
  {"term": {"DIAG_PRINC":"S722"}}
  ]
  }
  },
  "filter":{"range":{"idade_obito":{ "gte":60, "lte":69 }}
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
################ G02_D_60_69_SIH: Fratura quadril: 60 a 69 anos.#################

################ G02_D_70_79_SIH: Fratura quadril: 70 a 79 anos.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#Id do indicador:"G02_D_70_79_SIH"
#Filtro1- 70 a 79 anos
#Agregacao1-Ano
#Agregacao2-Municipio de residencia


q <- c(
  "G02_D_70_79_SIH",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  {"term": {"DIAG_PRINC":"S720"}},
  {"term": {"DIAG_PRINC":"S721"}},
  {"term": {"DIAG_PRINC":"S722"}}
  ]
  }
  },
  "filter":{"range":{"idade_obito":{ "gte":70, "lte":79 }}
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
################ G02_D_70_79_SIH: Fratura quadril: 70 a 79 anos.#################


################ G02_D_80_mais_SIH: Fratura quadril: 80 anos ou mais.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#Id do indicador:"G02_D_80_mais_SIH"
#Filtro1- 80 anos ou mais
#Agregacao1-Ano
#Agregacao2-Municipio de residencia


q <- c(
  "G02_D_80_mais_SIH",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  {"term": {"DIAG_PRINC":"S720"}},
  {"term": {"DIAG_PRINC":"S721"}},
  {"term": {"DIAG_PRINC":"S722"}}
  ]
  }
  },
  "filter":{"range":{"idade_obito":{ "gte":80 }}
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
################ G02_D_80_mais_SIH: Fratura quadril: 80 anos ou mais.#################