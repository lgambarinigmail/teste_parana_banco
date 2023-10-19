require 'watir'

module Dom

	def Dom.tela_inicial()
		$browser.goto("#{$url}")
	end

	# / ---------------------- /////// -------------------------------------- / 

	def Dom.botao_azul()
		$browser.a(:class => /button/).click
	end

	def Dom.botao_vermelho()
		$browser.a(:class => /button alert/).click
	end

	def Dom.botao_verde()
		$browser.a(:class => /button success/).click
	end


	# / ---------------------- /////// -------------------------------------- / 

	def Dom.botao_edit()
		@teste = $browser.as(:text => /edit/)
		
		for teste in 1..10 do
			@teste.to_a.sample.click
			puts "botão edit não tem ação, então segue texto para o click"
		end
	end

	def Dom.botao_delete()
		@teste = $browser.as(:text => /delete/)
		
		for teste in 1..10 do
			@teste.to_a.sample.click
			puts "botão delete não tem ação, então segue texto para o click"
		end
	end

	#  / ---------------------- /////// -------------------------------------- / 
		
	def Dom.validacao_botao()
	validacao_botao = $browser.div(:class => /large-10 columns/)

	if validacao_botao.exists?
		puts "Validado com sucesso"
	else	
		puts "############### Validação falhou"
		fail			
	end
	end

	def Dom.validacao_edit()
		@validacao_edit = $browser.url == "https://the-internet.herokuapp.com/challenging_dom#edit"
			if @validacao_edit == true
				puts "Teste validado com sucesso"
			else
				puts "############### Validação falhou"
				fail
			end
	end

	def Dom.validacao_delete()
		@validacao_delete = $browser.url == "https://the-internet.herokuapp.com/challenging_dom#delete"
			if @validacao_delete == true
				puts "Teste validado com sucesso"
			else
				puts "############### Validação falhou"
				fail
			end
	end
end