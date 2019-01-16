################A11_N_60_SIH_2000_2007: Internação por fratura de quadril - Acima de 60 anos.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"A11_N_60_SIH_2000_2007"
#Filtro2-Idade em dias: >= 60 anos
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "A11_N_60_SIH_2000_2007",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  { "term" : { "PROC_REA" : "39003124" }},
  { "term" : { "PROC_REA" : "39016129" }},
  { "term" : { "PROC_REA" : "39018121" }},
  { "term" : { "PROC_REA" : "39025128" }},
  { "term" : { "PROC_REA" : "39027120" }},
  { "term" : { "PROC_REA" : "39029123" }},
  { "term" : { "PROC_REA" : "93392150" }}

  ]
  }
  },
  "filter":{"range":{"idade":{ "gte":60 }}
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
################A11_N_60_SIH_2000_2007: Internação por fratura de quadril - Acima de 60 anos.#################


################A11_N_65_SIH_2000_2007: Internação por fratura de quadril - Acima de 65 anos.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"A11_N_65_SIH_2000_2007"
#Filtro2-Idade em dias: >= 65 anos
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "A11_N_65_SIH_2000_2007",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  { "term" : { "PROC_REA" : "39003124" }},
  { "term" : { "PROC_REA" : "39016129" }},
  { "term" : { "PROC_REA" : "39018121" }},
  { "term" : { "PROC_REA" : "39025128" }},
  { "term" : { "PROC_REA" : "39027120" }},
  { "term" : { "PROC_REA" : "39029123" }},
  { "term" : { "PROC_REA" : "93392150" }}
  
  ]
  }
  },
  "filter":{"range":{"idade":{ "gte":65}}
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
################A11_N_65_SIH_2000_2007: Internação por fratura de quadril - Acima de 65 anos.#################


################A11_N_70_SIH_2000_2007: Internação por fratura de quadril - Acima de 70 anos.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"A11_N_70_SIH_2000_2007"
#Filtro2-Idade em dias: >= 70 anos
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "A11_N_70_SIH_2000_2007",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  { "term" : { "PROC_REA" : "39003124" }},
  { "term" : { "PROC_REA" : "39016129" }},
  { "term" : { "PROC_REA" : "39018121" }},
  { "term" : { "PROC_REA" : "39025128" }},
  { "term" : { "PROC_REA" : "39027120" }},
  { "term" : { "PROC_REA" : "39029123" }},
  { "term" : { "PROC_REA" : "93392150" }}
  
  ]
  }
  },
  "filter":{"range":{"idade":{ "gte":70}}
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
################A11_N_70_SIH_2000_2007: Internação por fratura de quadril - Acima de 70 anos.#################



################A12_N_SIH_2000_2007: Internação para catarata - Acima de 40 anos.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"A12_N_SIH_2000_2007"
#Filtro2-Idade em dias: >= 40 anos
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "A12_N_SIH_2000_2007",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  { "term" : { "PROC_REA" : "36004049" }},
  { "term" : { "PROC_REA" : "36005045" }},
  { "term" : { "PROC_REA" : "36019054" }},
  { "term" : { "PROC_REA" : "36020052" }}
  
  ]
  }
  },
  "filter":{"range":{"idade":{ "gte":40}}
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
################A12_N_SIH_2000_2007: Internação para catarata - Acima de 40 anos.#################

################A15_N_SIH_2000_2007: Internação para angioplastia - Acima de 20 anos.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"A15_N_SIH_2000_2007"
#Filtro2-Idade em dias: >= 20 anos
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "A15_N_SIH_2000_2007",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  { "term" : { "PROC_REA" : "32023014" }},
  { "term" : { "PROC_REA" : "32035012" }},
  { "term" : { "PROC_REA" : "48030066" }},
  { "term" : { "PROC_REA" : "48030074" }},
  { "term" : { "PROC_REA" : "48030082" }},
  { "term" : { "PROC_REA" : "48030090" }},
  { "term" : { "PROC_REA" : "48030104" }}
  
  ]
  }
  },
  "filter":{"range":{"idade":{ "gte":20}}
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
################A15_N_SIH_2000_2007: Internação para angioplastia - Acima de 20 anos.#################



################A13_N_SIH_2000_2007: Internação para revascularização - Acima de 20 anos.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"A13_N_SIH_2000_2007"
#Filtro2-Idade em dias: >= 20 anos
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "A13_N_SIH_2000_2007",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  { "term" : { "PROC_REA" : "32011016" }},
  { "term" : { "PROC_REA" : "32038011" }},
  { "term" : { "PROC_REA" : "32039018" }},
  { "term" : { "PROC_REA" : "32040016" }},
  { "term" : { "PROC_REA" : "48010073" }},
  { "term" : { "PROC_REA" : "48010081" }},
  { "term" : { "PROC_REA" : "48010090" }},
  { "term" : { "PROC_REA" : "48010103" }}
  
  ]
  }
  },
  "filter":{"range":{"idade":{ "gte":20 }}
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
################A13_N_SIH_2000_2007: Internação para revascularização - Acima de 20 anos.#################




################C02_D_SIH_2000_2007: Internação para catarata #################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"C02_D_SIH_2000_2007"
#Filtro2-Dias de permanencia > 0 dias
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "C02_D_SIH_2000_2007",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  { "term" : { "PROC_REA" : "36004049" }},
  { "term" : { "PROC_REA" : "36005045" }},
  { "term" : { "PROC_REA" : "36006041" }},
  { "term" : { "PROC_REA" : "36019054" }},
  { "term" : { "PROC_REA" : "36020052" }}

  ]
  }
  },
  "filter":{"term":{"dias_perm":{ "gte":0 }}
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
################C02_D_SIH_2000_2007: Internação para catarata #################


################C02_N_SIH_2000_2007: Internação para catarata - day case #################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"C02_N_SIH_2000_2007"
#Filtro2-Dias de permanencia: == 0 dias
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "C02_N_SIH_2000_2007",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [ 
  { "term" : { "PROC_REA" : "36004049" }},
  { "term" : { "PROC_REA" : "36005045" }},
  { "term" : { "PROC_REA" : "36006041" }},
  { "term" : { "PROC_REA" : "36019054" }},
  { "term" : { "PROC_REA" : "36020052" }}
  
  ]
  }
  },
  "filter":{"term":{"dias_perm":0}
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
################C02_N_SIH_2000_2007: Internação para catarata day case #################




