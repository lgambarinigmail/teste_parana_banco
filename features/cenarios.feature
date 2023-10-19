# language: pt

Funcionalidade: Regressão


 @get @all
Cenário: GET
Dado que busco informações de um usuario
Quando seleciono o usuario
Então vejo que as informações buscadas foram retornadas

 @post @all
Cenário: POST
Dado que crio as informações de um usuario
Quando seleciono o usuario criado
Então vejo que as informações criadas foram retornadas


 @put @all
Cenário: PUT
Dado que altero as informações de um usuario
Quando seleciono o usuario alterado 
Então vejo que as informações alteradas foram retornadas


 @delete @all
Cenário: DELETE
Dado que as informações de um usuario foram deletadas
Quando seleciono o usuario deletado
Então vejo que as informações não foram retornadas