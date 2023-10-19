
module Requests

	#busca de informações

		def Requests.get_user()
			  puts $usuario_selecionado
		end

		def Requests.post_user()
			puts $criar_usuario
		end

		def Requests.put_user()
			puts $alterar_usuario
		end

		def Requests.delete_selected_user()
			puts $deletar_usuario
		end

	#alterações

		def Requests.select_get_user()
			$usuario_selecionado = HTTParty.get($base_url)
		end

		def Requests.create_user()
			$criar_usuario = HTTParty.post($base_url_post, :headers => {'Content-Type': 'aplication/json'}, body:
			  {
			    "userId": 1,
			    "id": 1,
			    "title": "titulo teste lucas",
			    "body": "body teste lucas"
			  }.to_json)
		end
		
		def Requests.update_user()
			$alterar_usuario = HTTParty.put($base_url, :headers => {'Content-Type': 'aplication/json'}, body:
			  {
			    "userId": 1,
			    "id": 1,
			    "title": "titulo teste lucas put",
			    "body": "body teste lucas put"
			  }.to_json)	
		end

		def Requests.delete_user()
			$deletar_usuario = HTTParty.delete($base_url, :headers => {'Content-Type': 'aplication/json'})
		end

	#validações
	
		def Requests.get_validation()
		  expect($usuario_selecionado.code).to eql 200
		  expect($usuario_selecionado["userId"]).to eql 1
		  expect($usuario_selecionado["id"]).to eql 1
		  expect($usuario_selecionado["title"]).to eql "sunt aut facere repellat provident occaecati excepturi optio reprehenderit"
		  expect($usuario_selecionado["body"]).to  eql "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
		end

		def Requests.post_validation()
			expect($criar_usuario["id"]).to eql 101
			expect($criar_usuario.code).to eql 201
		end

		def Requests.put_validation()
		  expect($alterar_usuario["id"]).to eql 1
		  expect($alterar_usuario.code).to eql 200
		  puts $alterar_usuario			
		end

		def Requests.delete_validation()
			expect($deletar_usuario.code).to eql 200
		end
end