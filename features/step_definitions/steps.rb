require 'httparty'
require_relative '../helpers/Requests.rb'

#GET

# / ---------------------- /////// -------------------------------------- / 

Dado('que busco informações de um usuario') do
  Requests::select_get_user()
end

Quando('seleciono o usuario') do 
  Requests::get_user()
end

Então('vejo que as informações buscadas foram retornadas') do
  Requests::get_validation()
end

# / ---------------------- /////// -------------------------------------- / 

#POST

Dado('que crio as informações de um usuario') do
  Requests::create_user()
end

Quando('seleciono o usuario criado') do
  Requests::post_user()
end

Então('vejo que as informações criadas foram retornadas') do
  Requests::post_validation()
  end
# / ---------------------- /////// -------------------------------------- / 


#PUT

Dado('que altero as informações de um usuario') do
  Requests::update_user()
end

Quando('seleciono o usuario alterado') do
    Requests::put_user()
end

Então('vejo que as informações alteradas foram retornadas') do
  Requests::put_validation()
end

# / ---------------------- /////// -------------------------------------- / 

#Delete 

Dado('que as informações de um usuario foram deletadas') do
  Requests::delete_user()
end

Quando('seleciono o usuario deletado') do
  Requests::delete_selected_user()
end

Então('vejo que as informações não foram retornadas') do
  Requests::delete_validation()
end

# / ---------------------- /////// -------------------------------------- / 
