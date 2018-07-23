
#Código para seleção dos numeradores do sistema SIM usando o elasticsearch - via linguagem R
#As seleções só contam com agregação por município de residência, mas precisam também da variável ano - ver com a equipe como resolver.

require(ggplot2)
library("elastic") 

connect(es_host = "elasticsearch.icict.fiocruz.br", es_port = 8201, es_user = "r_user", es_pwd = "r_user", es_transport_schema = "https")


################M01_N_SIM: Mortalidade infantil - com menos de um ano.################M
q<-'{"size":0, 
"query":{ 
  "filtered":{ 
    "filter":{ 
      "term":{ "idade_obito": 0  
  } 
    } 
      } 
}, 

  "aggs":{
    "ano":{ 
      "terms":{ "field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
  } 
    } 
      }
}' 
################M01_N_SIM: Mortalidade infantil - com menos de um ano.################M




################M02_N_SIM: Mortalidade infantil - Até 6 dias.#################
q<-'{"size":0, 
"query":{ 
  "filtered":{ 
    "filter":{ 
      "range":{ "idade em dias":{ "from":0 , "to":6} 
  } 
    } 
      } 
}, 

"aggs":{
  "Munic_res":{ 
    "terms":{ "field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
  } 
    } 
}
}' 
################M02_N_SIM: Mortalidade infantil - Até 6 dias.#################



################M03_N_SIM: Mortalidade infantil - De 7 Até 27 dias.#################
q<-'{"size":0, 
"query":{ 
  "filtered":{ 
    "filter":{ 
      "range":{ "idade em dias":{ "from":0 , "to":27} 
  } 
    } 
      } 
}, 

"aggs":{
  "Munic_res":{ 
    "terms":{ "field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
  } 
    } 
}
}' 
################M03_N_SIM: Mortalidade infantil - de 7 Até 27 dias.#################




################M04_N_SIM: Mortalidade infantil - De 28 Até 364 dias.#################
q<-'{"size":0, 
"query":{ 
  "filtered":{ 
    "filter":{ 
      "range":{ "idade em dias":{ "from":0 , "to":364} 
  } 
    } 
      } 
}, 

"aggs":{
  "Munic_res":{ 
    "terms":{ "field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
  } 
    } 
}
}' 
################M04_N_SIM: Mortalidade infantil - De 28 Até 364 dias.#################


################M05_N_SIM: Mortalidade Diarreica - De 0 Até 4 anos.#################
q<-'{"size":0, 
"query":{ 
  "filtered":{ 
    "query":{ "wildcard": {"CAUSABAS":"A0??"} },
    "filter":{"range":{"idade_obito":{ "gte":0, "lte":4 }} 
    }
  } 
}, 
"aggs":{ 
  "ano":{ 
    "terms":{"field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
    }
  } 
}
}'
################M05_N_SIM: Mortalidade Diarreica - De 0 Até 4 anos.#################




################M05_D_SIM: Mortalidade Diarreica - De 0 Até 4 anos.#################


q<-'{"size":0, 
"query":{ 
  "filtered":{ 
    "filter":{ "range":{ "idade_obito":{ "get":0, "lte":4 } } 
    } 
  } 
},
"aggs":{ 
  "ano":{ 
    "terms":{ "field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
    } 
  } 
}
}'

################M05_D_SIM: Mortalidade Diarreica - De 0 Até 4 anos.#################


################M06_N_SIM: Mortalidade Causas Externas ############################
q<-'{"size":0, 
    "query":{
      "bool": { "should": [ {"wildcard": {"CAUSABAS":"V*"}},
                            {"wildcard": {"CAUSABAS":"X*"}},
                            {"wildcard": {"CAUSABAS":"W*"}},
                            {"wildcard": {"CAUSABAS":"Y*"}}
                          ]
  }
},
"aggs":{ 
  "ano":{ 
    "terms":{"field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
    }
  } 
}
}'
################M06_N_SIM: Mortalidade Causas Externas ############################



################M07_N_SIM: Mortalidade Aparelho Circulatorio ############################
q<-'{"size":0, 
"query":{ 
  "filtered":{ 
    "query":{ "wildcard": {"CAUSABAS":"I*"} 
    }
  } 
}, 
"aggs":{ 
"ano":{ 
"terms":{"field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
}
} 
}
}'
################M07_N_SIM: Mortalidade Aparelho Circulatorio ############################





################M08_N_SIM: Mortalidade ISquemicas ############################
q<-'{"size":0, 
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
"ano":{ 
"terms":{"field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
}
} 
}
}'
################M08_N_SIM: Mortalidade ISquemicas ############################



################M09_N_SIM: Mortalidade AVE ############################
q<-'{"size":0, 
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
"ano":{ 
"terms":{"field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
}
} 
}
}'
################M09_N_SIM: Mortalidade AVE ############################





################M10_N_SIM: Mortalidade Cancer Utero ############################
q<-'{"size":0, 
"query":{ 
"filtered":{ 
"query":{ "wildcard": {"CAUSABAS":"C53*"} 
}
} 
}, 
"aggs":{ 
"ano":{ 
"terms":{"field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
}
} 
}
}'
################M10_N_SIM: Mortalidade Cancer Utero ############################




################M11_N_SIM: Mortalidade Cancer Mama ############################
q<-'{"size":0, 
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
"ano":{ 
"terms":{"field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
}
} 
}
}'
################M11_N_SIM: Mortalidade Cancer Mama ############################



################M12_N_SIM: Mortalidade Cancer Prostata ############################
q<-'{"size":0, 
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
"ano":{ 
"terms":{"field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
}
} 
}
}'
################M12_N_SIM: Mortalidade Cancer Prostata ############################



################M13_N_SIM: Mortalidade Suicidio ############################

q<-'{"size":0, 
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
"ano":{ 
"terms":{"field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
}
} 
}
}'
################M13_N_SIM: Mortalidade Suicidio ############################



################M14_N_SIM: Mortalidade Transporte terrestre ############################

q<-'{"size":0, 
"query":{
"bool": { "must":  {"wildcard": {"CAUSABAS":"V*"}},
"must_not":  {"wildcard": {"CAUSABAS":"V9*"}}
}
},
"aggs":{ 
"ano":{ 
"terms":{"field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
}
} 
}
}'
################M14_N_SIM: Mortalidade Transporte terrestre ############################



################B06_N2_SIM: Mortalidade Hipertensao 50 até 64 anos ############################

q<-'{"size":0, 
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
  "ano":{ 
    "terms":{"field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
    }
  } 
}
}'
################B06_N2_SIM: Mortalidade Hipertensao 50 até 64 anos ############################



################B06_N_SIM: Mortalidade Hipertensao 20 até 79 anos ############################

q<-'{"size":0, 
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
"ano":{ 
"terms":{"field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
}
} 
}
}'
################B06_N_SIM: Mortalidade Hipertensao 20 até 79 anos ############################


################B07_N_SIM: Mortalidade Ira até 4 anos ############################

q<-'{"size":0, 
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
"ano":{ 
"terms":{"field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
}
} 
}
}'
################B07_N_SIM: Mortalidade Ira até 4 anos ############################




################B07_N_SIM: Mortalidade Ira até 4 anos ############################

q<-'{"size":0, 
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
"ano":{ 
"terms":{"field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
}
} 
}
}'
################B07_N_SIM: Mortalidade Ira até 4 anos ############################


################B16_N_SIM: Mortalidade Diabetes 20 até 79 anos ############################

q<-'{"size":0, 
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
"ano":{ 
"terms":{"field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
}
} 
}
}'
################B16_N_SIM: Mortalidade Diabetes 20 até 79 anos ############################




################B16_N2_SIM: Mortalidade Diabetes  ############################

q<-'{"size":0, 
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
  "ano":{ 
    "terms":{"field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
    }
  } 
}
}'
################B16_N2_SIM: Mortalidade Diabetes  ############################



################B17_N_SIM: Mortalidade Materna 10 até 49 anos ############################

q<-'{"size":0, 
"query":{ 
  "filtered":{ 
    "query":{
      "bool": {
        "should": [ {"wildcard": {"CAUSABAS":"A34*"}},{"wildcard": {"CAUSABAS":"O*"}}],
        "must_not":[{"wildcard": {"CAUSABAS":"O96*"}},{"wildcard": {"CAUSABAS":"O97*"}}]
      }
    },
    "filter":{"range":{"idade_obito":{ "gte":20, "lte":79 }}
    }
  }
},
"aggs":{ 
  "ano":{ 
    "terms":{"field":"res_codmun_adotado", "size":0, "order":{ "_term":"asc" } 
  }
    } 
}
}'
################B17_N_SIM: Mortalidade Materna 10 até 49 anos ############################
