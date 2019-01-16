################A11_N_60_SIH_2008_-: Internação por fratura de quadril - Acima de 60 anos.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"A11_N_60_SIH_2008_-"
#Filtro2-Idade em dias: >= 60 anos
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "A11_N_60_SIH_2008_-",
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
################A11_N_60_SIH_2008_-: Internação por fratura de quadril - Acima de 60 anos.#################


################A11_N_65_SIH_2008_-: Internação por fratura de quadril - Acima de 65 anos.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"A11_N_65_SIH_2008_-"
#Filtro2-Idade em dias: >= 65 anos
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "A11_N_65_SIH_2008_-",
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
  "filter":{"range":{"idade":{ "gte":65 }}
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
################A11_N_65_SIH_2008_-: Internação por fratura de quadril - Acima de 65 anos.#################


################A11_N_70_SIH_2008_-: Internação por fratura de quadril - Acima de 70 anos.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"A11_N_70_SIH_2008_-"
#Filtro2-Idade em dias: >= 70 anos
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "A11_N_70_SIH_2008_-",
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
  "filter":{"range":{"idade":{ "gte":70 }}
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
################A11_N_70_SIH_2008_-: Internação por fratura de quadril - Acima de 60 anos.#################


################A12_N_SIH_2008_-: Internação para catarata - Acima de 40 anos.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"A12_N_SIH_2008_-"
#Filtro2-Idade em dias: >= 40 anos
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "A12_N_SIH_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [
  { "term" : { "PROC_REA" : "0405050097" }},
  { "term" : { "PROC_REA" : "0405050100" }},
  { "term" : { "PROC_REA" : "0405050119" }},
  { "term" : { "PROC_REA" : "0405050372" }}
  
  ]
  }
  },
  "filter":{"range":{"idade":{ "gte":40 }}
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
################A12_N_SIH_2008_-: Internação para catarata - Acima de 40 anos.#################



################A15_N_SIH_2008_-: Internação para angioplastia - Acima de 20 anos.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"A15_N_SIH_2008_-"
#Filtro2-Idade em dias: >= 20 anos
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "A15_N_SIH_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [
  { "term" : { "PROC_REA" : "0406030014" }},
  { "term" : { "PROC_REA" : "0406030022" }},
  { "term" : { "PROC_REA" : "0406030030" }},
  { "term" : { "PROC_REA" : "0406030049" }},
  { "term" : { "PROC_REA" : "0406030065" }},
  { "term" : { "PROC_REA" : "0406030073" }}
  
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
################A15_N_SIH_2008_-: Internação para angiopalstia - Acima de 20 anos.#################



################A13_N_SIH_2008_-: Internação para revascularização - Acima de 20 anos.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"A13_N_SIH_2008_-"
#Filtro2-Idade em dias: >= 20 anos
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "A13_N_SIH_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [
  { "term" : { "PROC_REA" : "0406010927" }},
  { "term" : { "PROC_REA" : "0406010935" }},
  { "term" : { "PROC_REA" : "0406010943" }},
  { "term" : { "PROC_REA" : "0406010951" }}
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
################A13_N_SIH_2008_-: Internação para revascularização - Acima de 20 anos.#################




################C02_D_SIH_2008_-: Internação para catarata #################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"C02_D_SIH_2008_-"
#Filtro2-dias de permanencia: >= 0 dias
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "C02_D_SIH_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [
  { "term" : { "PROC_REA" : "0405050097" }},
  { "term" : { "PROC_REA" : "0405050100" }},
  { "term" : { "PROC_REA" : "0405050119" }},
  { "term" : { "PROC_REA" : "0405050372" }}
  
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
################C02_D_SIH_2008_-: Internação para catarata #################


################C02_N_SIH_2008_-: Internação para catarata - day case #################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"C02_N_SIH_2008_-"
#Filtro2-dias de permanencia: == 0 dias
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "C02_N_SIH_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [
  { "term" : { "PROC_REA" : "0405050097" }},
  { "term" : { "PROC_REA" : "0405050100" }},
  { "term" : { "PROC_REA" : "0405050119" }},
  { "term" : { "PROC_REA" : "0405050372" }}
  
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
################C02_N_SIH_2008_-: Internação para catarata - day case #################


################C04_N_SIH_2008_-: Internação para amigdalectomia - day case #################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"C04_N_SIH_2008_-"
#Filtro2-dias de permanencia: == 0 dias
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "C04_N_SIH_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [
  { "term" : { "PROC_REA" : "0404010016" }},
  { "term" : { "PROC_REA" : "0404010024" }},
  { "term" : { "PROC_REA" : "0404010032" }}
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
################C04_N_SIH_2008_-: Internação para amigdalectomia - day case #################



################C04_D_SIH_2008_-: Internação para amigdalectomia #################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"C04_D_SIH_2008_-"
#Filtro2-dias de permanencia: >= 0 dias
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "C04_D_SIH_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [
  { "term" : { "PROC_REA" : "0404010016" }},
  { "term" : { "PROC_REA" : "0404010024" }},
  { "term" : { "PROC_REA" : "0404010032" }}
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
################C04_D_SIH_2008_-: Internação para amigdalectomia #################


################C05_D_SIH_2008_-: Internação para vasectomia #################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"C05_D_SIH_2008_-"
#Filtro2-dias de permanencia: >= 0 dias
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "C05_D_SIH_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [
  { "term" : { "PROC_REA" : "0409040240" }}
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
################C05_D_SIH_2008_-: Internação para vasectomia #################

################C05_D_SIH_2008_-: Internação para vasectomia - case day#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"C05_D_SIH_2008_-"
#Filtro2-dias de permanencia: >= 0 dias
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "C05_N_SIH_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [
  { "term" : { "PROC_REA" : "0409040240" }}
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
################C05_N_SIH_2008_-: Internação para vasectomia - day case#################


################C06_D_SIH_2008_-: Internação para hemorroidectomia #################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"C06_D_SIH_2008_-"
#Filtro2-dias de permanencia: >= 0 dias
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "C06_D_SIH_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [
  { "term" : { "PROC_REA" : "0407020284" }},
  { "term" : { "PROC_REA" : "0407020314" }},
  { "term" : { "PROC_REA" : "0407020497" }}
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
################C06_D_SIH_2008_-: Internação para hemorroidectomia #################

################C06_N_SIH_2008_-: Internação para hemorroidectomia - day case #################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"C06_N_SIH_2008_-"
#Filtro2-dias de permanencia: >= 0 dias
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "C06_N_SIH_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [
  { "term" : { "PROC_REA" : "0407020284" }},
  { "term" : { "PROC_REA" : "0407020314" }},
  { "term" : { "PROC_REA" : "0407020497" }}
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
################C06_N_SIH_2008_-: Internação para hemorroidectomia - day case #################


################C08_D_SIH_2008_-: Internação para hérnia #################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"C08_D_SIH_2008_-"
#Filtro2-dias de permanencia: >= 0 dias
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "C08_D_SIH_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [
  { "term" : { "PROC_REA"  :  "0407040099" }},
  { "term" : { "PROC_REA"  :  "0407040102" }}
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
################C08_D_SIH_2008_-: Internação para hérnia #################

################C08_N_SIH_2008_-: Internação para hérnia-day case #################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"C08_N_SIH_2008_-"
#Filtro2-dias de permanencia: >= 0 dias
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "C08_N_SIH_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [
  { "term" : { "PROC_REA"  :  "0407040099" }},
  { "term" : { "PROC_REA"  :  "0407040102" }}
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
################C08_N_SIH_2008_-: Internação para hérnia-day case #################



################G01_N_SIH_2008_-: Internação para histerectomia #################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"G01_N_SIH_2008_-"
#Filtro2-dias de permanencia: >= 0 dias
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "G01_N_SIH_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{"bool":
  {"should":[
  {"term":{"PROC_REA" : "0411020030"}},
  {"term":{"PROC_REA" : "0409060100"}},
  {"term":{"PROC_REA" : "0409060119"}},
  {"term":{"PROC_REA" : "0409060127"}},
  {"term":{"PROC_REA" : "0409060135"}},
  {"term":{"PROC_REA" : "0409060143"}},
  {"term":{"PROC_REA" : "0409060151"}},
  {"term":{"PROC_REA" : "0409060151"}}
  ]
  },
  
  {"must_not":
  {"bool":
  {"should":[
  { "wildcard": {"CAUSABAS":"O*"}},
  { "wildcard": {"CAUSABAS":"X*"}},
  { "wildcard": {"CAUSABAS":"D06*"}},
  { "wildcard": {"CAUSABAS":"D07*"}},
  { "wildcard": {"CAUSABAS":"D08*"}},
  { "wildcard": {"CAUSABAS":"D09*"}},
  { "wildcard": {"CAUSABAS":"C*"}},
  { "wildcard": {"CAUSABAS":"Y*"}}
  
  ]
  },
  {"must_not":
  {"should":[
  { "wildcard": {"CAUSABAS":"Y99*"}},
  { "wildcard": {"CAUSABAS":"C51*"}},
  { "wildcard": {"CAUSABAS":"C59*"}},
  ]
  }
  }
  }
  }
  }
  
  ,
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
################G01_N_SIH_2008_-: Internação para catarata #################



################LACERACAO_N_SIH_2008_-: LACERAÇÃO  #################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"LACERACAO_N_SIH_2008_-"
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "LACERACAO_N_SIH_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{"bool":
  {"should":[
  {"term":{"PROC_REA" : "0310010039"}},
  {"term":{"PROC_REA" : "0310010047"}},
  {"term":{"PROC_REA" : "0310010055"}}
  
  ]
  },
  
  {"must":
  {"bool":
  {"should":[
  {"term":{"DIAG_SECUN" : "O702"}},
  {"term":{"DIAG_SECUN" : "O703"}},
  {"term":{"CID_ASSO" : "O702"}},
  {"term":{"CID_ASSO" : "O703"}}
  
  ]
  }
  }
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
################LACERACAO_N_SIH_2008_-: LACERAÇÃO #################


################LACERACAO_D_SIH_2008_-: LACERAÇÃO  #################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"LACERACAO_N_SIH_2008_-"
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "LACERACAO_N_SIH_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{"bool":
  {"should":[
  {"term":{"PROC_REA" : "0310010039"}},
  {"term":{"PROC_REA" : "0310010047"}},
  {"term":{"PROC_REA" : "0310010055"}}
  
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
################LACERACAO_D_SIH_2008_-: LACERAÇÃO #################

################A41_QUIMIO_N_SIH_2008_-: Internação quimioterapia  #################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"A41_QUIMIO_N_SIH_2008_-"
#Filtro2-dias de permanencia: >= 0 dias
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "A41_QUIMIO_N_SIH_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":
  
  { "wildcard": {"CAUSABAS":"03040*"} }
  
  
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
################A41_QUIMIO_N_SIH_2008_-: Internação quimioterapia  #################


################A43_RADIO_N_SIH_2008_-: LACERAÇÃO  #################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"A43_RADIO_N_SIH_2008_-"
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "A43_RADIO_N_SIH_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{"bool":
  {"should":[
  {"term":{"PROC_REA" : "0304010235"}},
  {"term":{"PROC_REA" : "0304010243"}},
  {"term":{"PROC_REA" : "0304010251"}},
  {"term":{"PROC_REA" : "0304010286"}},
  {"term":{"PROC_REA" : "0304010294"}}
  
  
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
################A43_RADIO_N_SIH_2008_-: LACERAÇÃO #################


################A28_A29_PROC_CIRURGICO : Procedimento Cirúrgico #################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#Id do indicador:"A28_A29_PROC_CIRURGICO"
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "A28_A29_PROC_CIRURGICO",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [
  { "term" : { "PROC_REA"  :  "0411020013" }}, 
  { "term" : { "PROC_REA"  :  "0415010012" }}, 
  { "term" : { "PROC_REA"  :  "0407030026" }}, 
  { "term" : { "PROC_REA"  :  "0407040102" }}, 
  { "term" : { "PROC_REA"  :  "0407020039" }}, 
  { "term" : { "PROC_REA"  :  "0415040035" }}, 
  { "term" : { "PROC_REA"  :  "0407040129" }}, 
  { "term" : { "PROC_REA"  :  "0407030034" }}, 
  { "term" : { "PROC_REA"  :  "0409060135" }}, 
  { "term" : { "PROC_REA"  :  "0415030013" }}, 
  { "term" : { "PROC_REA"  :  "0406020566" }}, 
  { "term" : { "PROC_REA"  :  "0415020034" }}, 
  { "term" : { "PROC_REA"  :  "0409050083" }}, 
  { "term" : { "PROC_REA"  :  "0407040161" }}, 
  { "term" : { "PROC_REA"  :  "0408060352" }}, 
  { "term" : { "PROC_REA"  :  "0401020100" }}, 
  { "term" : { "PROC_REA"  :  "0412040166" }}, 
  { "term" : { "PROC_REA"  :  "0409060186" }}, 
  { "term" : { "PROC_REA"  :  "0408020407" }}, 
  { "term" : { "PROC_REA"  :  "0408050500" }}, 
  { "term" : { "PROC_REA"  :  "0404010032" }}, 
  { "term" : { "PROC_REA"  :  "0401020053" }}, 
  { "term" : { "PROC_REA"  :  "0406020574" }}, 
  { "term" : { "PROC_REA"  :  "0413040178" }}, 
  { "term" : { "PROC_REA"  :  "0409070050" }}, 
  { "term" : { "PROC_REA"  :  "0409060119" }}, 
  { "term" : { "PROC_REA"  :  "0407020284" }}, 
  { "term" : { "PROC_REA"  :  "0409040240" }}, 
  { "term" : { "PROC_REA"  :  "0409060046" }}, 
  { "term" : { "PROC_REA"  :  "0408060379" }}, 
  { "term" : { "PROC_REA"  :  "0415040027" }}, 
  { "term" : { "PROC_REA"  :  "0407040080" }}, 
  { "term" : { "PROC_REA"  :  "0408050012" }}, 
  { "term" : { "PROC_REA"  :  "0408020431" }}, 
  { "term" : { "PROC_REA"  :  "0408060042" }}, 
  { "term" : { "PROC_REA"  :  "0409060216" }}, 
  { "term" : { "PROC_REA"  :  "0408050497" }}, 
  { "term" : { "PROC_REA"  :  "0408020423" }}, 
  { "term" : { "PROC_REA"  :  "0404010377" }}, 
  { "term" : { "PROC_REA"  :  "0408050519" }}, 
  { "term" : { "PROC_REA"  :  "0407040064" }}, 
  { "term" : { "PROC_REA"  :  "0408050632" }}, 
  { "term" : { "PROC_REA"  :  "0408050578" }}, 
  { "term" : { "PROC_REA"  :  "0401020045" }}, 
  { "term" : { "PROC_REA"  :  "0410010111" }}, 
  { "term" : { "PROC_REA"  :  "0407040099" }}, 
  { "term" : { "PROC_REA"  :  "0408020202" }}, 
  { "term" : { "PROC_REA"  :  "0408020342" }}, 
  { "term" : { "PROC_REA"  :  "0408060360" }}, 
  { "term" : { "PROC_REA"  :  "0409060038" }}, 
  { "term" : { "PROC_REA"  :  "0409030040" }}, 
  { "term" : { "PROC_REA"  :  "0409060232" }}, 
  { "term" : { "PROC_REA"  :  "0409060178" }}, 
  { "term" : { "PROC_REA"  :  "0403020123" }}, 
  { "term" : { "PROC_REA"  :  "0409010170" }}, 
  { "term" : { "PROC_REA"  :  "0408060450" }}, 
  { "term" : { "PROC_REA"  :  "0405050097" }}, 
  { "term" : { "PROC_REA"  :  "0401020070" }}, 
  { "term" : { "PROC_REA"  :  "0407020276" }}, 
  { "term" : { "PROC_REA"  :  "0408050551" }}, 
  { "term" : { "PROC_REA"  :  "0409060070" }}, 
  { "term" : { "PROC_REA"  :  "0409040215" }}, 
  { "term" : { "PROC_REA"  :  "0408010150" }}, 
  { "term" : { "PROC_REA"  :  "0408020377" }}, 
  { "term" : { "PROC_REA"  :  "0408020385" }}, 
  { "term" : { "PROC_REA"  :  "0411020048" }}, 
  { "term" : { "PROC_REA"  :  "0409060100" }}, 
  { "term" : { "PROC_REA"  :  "0408060310" }}, 
  { "term" : { "PROC_REA"  :  "0407010211" }}, 
  { "term" : { "PROC_REA"  :  "0408050160" }}, 
  { "term" : { "PROC_REA"  :  "0402010043" }}, 
  { "term" : { "PROC_REA"  :  "0409030023" }}, 
  { "term" : { "PROC_REA"  :  "0408020393" }}, 
  { "term" : { "PROC_REA"  :  "0408050489" }}, 
  { "term" : { "PROC_REA"  :  "0407040242" }}, 
  { "term" : { "PROC_REA"  :  "0403010101" }}, 
  { "term" : { "PROC_REA"  :  "0404010024" }}, 
  { "term" : { "PROC_REA"  :  "0410010073" }}, 
  { "term" : { "PROC_REA"  :  "0414020413" }}, 
  { "term" : { "PROC_REA"  :  "0403010098" }}, 
  { "term" : { "PROC_REA"  :  "0409010561" }}, 
  { "term" : { "PROC_REA"  :  "0404010016" }}, 
  { "term" : { "PROC_REA"  :  "0408060484" }}, 
  { "term" : { "PROC_REA"  :  "0409010065" }}, 
  { "term" : { "PROC_REA"  :  "0408010134" }}, 
  { "term" : { "PROC_REA"  :  "0405030142" }}, 
  { "term" : { "PROC_REA"  :  "0408040050" }}, 
  { "term" : { "PROC_REA"  :  "0408050896" }}, 
  { "term" : { "PROC_REA"  :  "0408020547" }}, 
  { "term" : { "PROC_REA"  :  "0408010142" }}, 
  { "term" : { "PROC_REA"  :  "0409060127" }}, 
  { "term" : { "PROC_REA"  :  "0409070270" }}, 
  { "term" : { "PROC_REA"  :  "0408060190" }}, 
  { "term" : { "PROC_REA"  :  "0408020334" }}, 
  { "term" : { "PROC_REA"  :  "0413010082" }}, 
  { "term" : { "PROC_REA"  :  "0408050527" }}, 
  { "term" : { "PROC_REA"  :  "0407020101" }}, 
  { "term" : { "PROC_REA"  :  "0408050020" }}, 
  { "term" : { "PROC_REA"  :  "0409040134" }}, 
  { "term" : { "PROC_REA"  :  "0404010482" }}
  
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
################A28_A29_PROC_CIRURGICO: Procedimento Cirúrgico #################

################A28_A29_PROC_CLINICO: Procedimento Clínico################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#Id do indicador:"A28_A29_PROC_CLINICO"
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "A28_A29_PROC_CLINICO",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [
  { "term" : { "PROC_REA"  :  "0303140151" }}, 
  { "term" : { "PROC_REA"  :  "0303170093" }}, 
  { "term" : { "PROC_REA"  :  "0303010061" }}, 
  { "term" : { "PROC_REA"  :  "0303140046" }}, 
  { "term" : { "PROC_REA"  :  "0303060212" }}, 
  { "term" : { "PROC_REA"  :  "0303010037" }}, 
  { "term" : { "PROC_REA"  :  "0303100044" }}, 
  { "term" : { "PROC_REA"  :  "0301060088" }}, 
  { "term" : { "PROC_REA"  :  "0303040149" }}, 
  { "term" : { "PROC_REA"  :  "0303150050" }}, 
  { "term" : { "PROC_REA"  :  "0304100021" }}, 
  { "term" : { "PROC_REA"  :  "0305020013" }}, 
  { "term" : { "PROC_REA"  :  "0303030038" }}, 
  { "term" : { "PROC_REA"  :  "0303070102" }}, 
  { "term" : { "PROC_REA"  :  "0304100013" }}, 
  { "term" : { "PROC_REA"  :  "0308010019" }}, 
  { "term" : { "PROC_REA"  :  "0303070129" }}, 
  { "term" : { "PROC_REA"  :  "0303060107" }}, 
  { "term" : { "PROC_REA"  :  "0303080078" }}, 
  { "term" : { "PROC_REA"  :  "0301060070" }}, 
  { "term" : { "PROC_REA"  :  "0303080060" }}, 
  { "term" : { "PROC_REA"  :  "0303060280" }}, 
  { "term" : { "PROC_REA"  :  "0303070064" }}, 
  { "term" : { "PROC_REA"  :  "0303160039" }}, 
  { "term" : { "PROC_REA"  :  "0301060010" }}, 
  { "term" : { "PROC_REA"  :  "0303060190" }}, 
  { "term" : { "PROC_REA"  :  "0303140135" }}, 
  { "term" : { "PROC_REA"  :  "0303030046" }}, 
  { "term" : { "PROC_REA"  :  "0303070072" }}, 
  { "term" : { "PROC_REA"  :  "0303140143" }}, 
  { "term" : { "PROC_REA"  :  "0305020056" }}, 
  { "term" : { "PROC_REA"  :  "0303010010" }}, 
  { "term" : { "PROC_REA"  :  "0303130059" }}, 
  { "term" : { "PROC_REA"  :  "0303160055" }}, 
  { "term" : { "PROC_REA"  :  "0303160063" }}, 
  { "term" : { "PROC_REA"  :  "0303030020" }}, 
  { "term" : { "PROC_REA"  :  "0303070110" }}, 
  { "term" : { "PROC_REA"  :  "0308040015" }}, 
  { "term" : { "PROC_REA"  :  "0303160047" }}, 
  { "term" : { "PROC_REA"  :  "0303040165" }}, 
  { "term" : { "PROC_REA"  :  "0303040084" }}, 
  { "term" : { "PROC_REA"  :  "0303170140" }}, 
  { "term" : { "PROC_REA"  :  "0305020021" }}, 
  { "term" : { "PROC_REA"  :  "0303140100" }}, 
  { "term" : { "PROC_REA"  :  "0303060298" }}, 
  { "term" : { "PROC_REA"  :  "0303060026" }}, 
  { "term" : { "PROC_REA"  :  "0303020059" }}, 
  { "term" : { "PROC_REA"  :  "0303020032" }}, 
  { "term" : { "PROC_REA"  :  "0303040092" }}, 
  { "term" : { "PROC_REA"  :  "0308020030" }}, 
  { "term" : { "PROC_REA"  :  "0303150033" }}, 
  { "term" : { "PROC_REA"  :  "0303090316" }}, 
  { "term" : { "PROC_REA"  :  "0305020048" }}, 
  { "term" : { "PROC_REA"  :  "0303160020" }}, 
  { "term" : { "PROC_REA"  :  "0303190019" }}, 
  { "term" : { "PROC_REA"  :  "0303170166" }}, 
  { "term" : { "PROC_REA"  :  "0303080094" }}, 
  { "term" : { "PROC_REA"  :  "0303060131" }}, 
  { "term" : { "PROC_REA"  :  "0303100010" }}, 
  { "term" : { "PROC_REA"  :  "0303060204" }}, 
  { "term" : { "PROC_REA"  :  "0303150025" }}, 
  { "term" : { "PROC_REA"  :  "0303010215" }}, 
  { "term" : { "PROC_REA"  :  "0303130024" }}, 
  { "term" : { "PROC_REA"  :  "0308020022" }}, 
  { "term" : { "PROC_REA"  :  "0303150041" }}, 
  { "term" : { "PROC_REA"  :  "0303170107" }}, 
  { "term" : { "PROC_REA"  :  "0303060263" }}, 
  { "term" : { "PROC_REA"  :  "0305010174" }}, 
  { "term" : { "PROC_REA"  :  "0303070099" }}, 
  { "term" : { "PROC_REA"  :  "0303020040" }}, 
  { "term" : { "PROC_REA"  :  "0303010126" }}, 
  { "term" : { "PROC_REA"  :  "0303170131" }}, 
  { "term" : { "PROC_REA"  :  "0303170182" }}, 
  { "term" : { "PROC_REA"  :  "0303140127" }}, 
  { "term" : { "PROC_REA"  :  "0301050074" }}, 
  { "term" : { "PROC_REA"  :  "0303040262" }}, 
  { "term" : { "PROC_REA"  :  "0303130067" }}, 
  { "term" : { "PROC_REA"  :  "0303010193" }}, 
  { "term" : { "PROC_REA"  :  "0303100036" }}, 
  { "term" : { "PROC_REA"  :  "0303170158" }}, 
  { "term" : { "PROC_REA"  :  "0308010043" }}, 
  { "term" : { "PROC_REA"  :  "0303060301" }}, 
  { "term" : { "PROC_REA"  :  "0303020067" }}, 
  { "term" : { "PROC_REA"  :  "0303060042" }}, 
  { "term" : { "PROC_REA"  :  "0303010134" }}, 
  { "term" : { "PROC_REA"  :  "0303080051" }}, 
  { "term" : { "PROC_REA"  :  "0303040017" }}, 
  { "term" : { "PROC_REA"  :  "0303020083" }}, 
  { "term" : { "PROC_REA"  :  "0303150017" }}, 
  { "term" : { "PROC_REA"  :  "0303140070" }}, 
  { "term" : { "PROC_REA"  :  "0303010118" }}
  
  
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
################A28_A29_PROC_CLINICO: Procedimento Clínico################


################ G10_TRANSP RIM_2008_-: Transplante Renal.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"G10_TRANSP RIM_2008_-"
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "G10_TRANSP RIM_2008_-",
  '{"size":0,
  "query":{
  "filtered":{
  "query":{
  "bool": { "should": [
  { "term" : { "PROC_REA" : "0505020106" }},
  { "term" : { "PROC_REA" : "0505020092" }}
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
################ G10_TRANSP RIM_2008_-: Transplante Renal.#################


################ B19_N_SIH_2008_-: Amputação - causa diabetes.#################
#Indicadores que usam proc_rea no SIH são divididos por períodos
#para comportar a mudança de código, ocorrida em 2008.
#Id do indicador:"B19_N_SIH_2008_-"
#Agregacao1-Ano
#Agregacao2-Municipio de residencia

q <- c(
  "B19_N_SIH_2008_-",
  '{"size":0,
  "query":{
    "filtered":{
      "query":{
        "bool":{
          "should":[
            {"wildcard": {"CAUSABAS":"E10"}},
            {"wildcard": {"CAUSABAS":"E11"}}, 
            {"wildcard": {"CAUSABAS":"E12"}}, 
            {"wildcard": {"CAUSABAS":"E13"}}, 
            {"wildcard": {"CAUSABAS":"E14"}}, 
            {"wildcard": {"CAUSABAS":"E10"}}, 
            {"wildcard": {"CAUSABAS":"E11"}}, 
            {"wildcard": {"CAUSABAS":"E12"}}, 
            {"wildcard": {"CAUSABAS":"E13"}}, 
            {"wildcard": {"CAUSABAS":"E14"}}
          ]
        },
        {"must":
          {"bool":
            {"should":[
              { "term" : { "PROC_REA" : "0408050012"}}, 
              { "term" : { "PROC_REA" : "0408050020"}}
              ]
            }
          }
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
################ B19_N_SIH_2008_-: Amputação - causa diabetes.#################



