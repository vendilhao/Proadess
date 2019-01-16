################A11_N_60_SIH_2000_2007: Internação por fratura de quadril - Acima de 60 anos.#################
#Indicadores que usam proc_rea no SIH são divididos por perídos
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
  { "term" : { "PROC_REA" : "0408040041" }},
  { "term" : { "PROC_REA" : "0408040050" }},
  { "term" : { "PROC_REA" : "0408040076" }},
  { "term" : { "PROC_REA" : "0408040084" }},
  { "term" : { "PROC_REA" : "0408040092" }},
  { "term" : { "PROC_REA" : "0702031224" }}

  ]
  }
  },
  "filter":{"range":{"idade":{ "gte":60, "lte":150 }}
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




