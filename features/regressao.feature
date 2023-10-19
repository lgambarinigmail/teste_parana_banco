# language: pt

Funcionalidade: Regressão


 @teste3botoes
Cenário: Botão azul
Dado que estou na home do Challenging DOM
Quando seleciono o botão azul
Então vejo que a resposta foi alterada

# / ---------------------- /////// -------------------------------------- / 

 @teste3botoes
Cenário: Botão Vermelho
Dado que estou na home do Challenging DOM
Quando seleciono o botão vermelho alert
Então vejo que a resposta foi alterada

# / ---------------------- /////// -------------------------------------- / 

 @teste3botoes
Cenário: Botão Verde
Dado que estou na home do Challenging DOM
Quando seleciono o botão Verde sucesso
Então vejo que a resposta foi alterada

# / ---------------------- /////// -------------------------------------- / 
 
 @testebotaoedit
Cenário: Botão Edit
Dado que estou na home do Challenging DOM
Quando clico no botão edit
Então vejo que a URL foi alterada para edit

 # / ---------------------- /////// -------------------------------------- / 

 
 @testebotaodelete
Cenário: Botão Delete
Dado que estou na home do Challenging DOM
Quando clico no botão delete
Então vejo que a URL foi alterada para delete