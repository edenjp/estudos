require_relative "ui"

def le_mapa(numero)
	arquivo = "mapa#{numero}.txt"
	texto = File.read arquivo
	mapa = texto.split "\n"
end



def encontra_jogador(mapa)
	caractere_do_heroi = "H"
	mapa.each_with_index do |linha_atual, linha|
		coluna_do_heroi = linha_atual.index caractere_do_heroi
		if coluna_do_heroi
			return [linha, coluna_do_heroi]
		end
	end
	#não achei
end

def joga(nome)
	mapa = le_mapa 1


	while true
		desenha mapa
		direcao = pede_movimento
		heroi = encontra_jogador mapa
		mapa[heroi[0]][heroi[1]] = " "
		case direcao
			when "W"
				heroi[0] -= 1
			when "S"
				heroi[0] += 1
			when "A"
				heroi[1] -= 1
			when "D"
				heroi[1] += 1
		end
	end
	mapa[heroi[0]][heroi[1]] = "H"
end

def inicia_pega_pega
	nome = da_boas_vindas
	joga nome
end