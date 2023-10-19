# language: pt

Funcionalidade: Regressão


@black @testex
Cenário: 
Dado que estou na home do Totem BK
E clico em começar pedido
Quando seleciono retirar e comer
E seleciono hoje não no clube BK
E seleciono o menu combos
E seleciono algum combo
E clico em finalizar pedido
E clico em pagar
E preencho o meu nome Teste
E seleciono ir para pagamento
Então seleciono cartão credito
 


# / ---------------------- /////// -------------------------------------- / 
# Validação de Time O ut

@time_out @reg1
Cenário: 
Dado que estou na home do Totem BK
E clico em começar pedido
Quando não faço nenhuma ação e aguardo 30 segundos
Então devo ser direcionado para a home do Totem BK


# / ---------------------- /////// -------------------------------------- / 
# Validação de idiomas HOME

@idioma @reg
Cenário: Validação de idioma
Dado que estou na home do Totem BK
E clico em começar pedido
Quando seleciono o idioma "Brazil"
Então devo validar que o idioma esta correto

@idioma @reg
Cenário: Validação de idioma
Dado que estou na home do Totem BK
E clico em começar pedido
Quando seleciono o idioma "EUA"
Então devo validar que o idioma esta correto

@idioma @reg
Cenário: Validação de idioma
Dado que estou na home do Totem BK
E clico em começar pedido
Quando seleciono o idioma "Espanha"
Então devo validar que o idioma esta correto
