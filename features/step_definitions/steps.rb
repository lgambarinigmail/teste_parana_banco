require 'watir'

require_relative '../helpers/DOM.rb'


Dado('que estou na home do Challenging DOM') do
  Dom::tela_inicial()
end

Quando('seleciono o botão azul') do
  Dom::botao_azul()
end

Quando('seleciono o botão vermelho alert') do
  Dom::botao_vermelho()
end

Quando('seleciono o botão Verde sucesso') do
  Dom::botao_verde()
end

Então('vejo que a resposta foi alterada') do
  Dom::validacao_botao()
end

# / ---------------------- /////// -------------------------------------- / 


Quando('clico no botão edit') do
  Dom::botao_edit()
end

Quando('clico no botão delete') do
  Dom::botao_delete()
end

Então('vejo que a URL foi alterada para edit') do
  Dom::validacao_edit()
end

Então('vejo que a URL foi alterada para delete') do
  Dom::validacao_delete()
end
