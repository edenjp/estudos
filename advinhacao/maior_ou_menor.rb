def da_boas_vindas
  puts
  puts "        P  /_\  P                              "
  puts "       /_\_|_|_/_\                             "
  puts "   n_n | ||. .|| | n_n         Bem vindo ao    "
  puts "   |_|_|nnnn nnnn|_|_|     Jogo de Adivinhação!"
  puts "  |' '  |  |_|  |'  ' |                        "
  puts "  |_____| ' _ ' |_____|                        " 
  puts "        \__|_|__/                              "
  puts
  puts "Qual é o seu nome?"
  nome = gets.strip 
  puts "\n \n \n \n \n"
  puts "Vamos começar o jogo, " + nome
  nome
end

def pede_dificuldade
  puts "Qual o nível de dificuldade?"
  puts "(1) Muito fácil (2) Fácil (3) Normal (4) Difícil (5) Impossível"
  puts "Escolha: "
  dificuldade = gets.to_i
end

def sorteia_numero_secreto(dificuladade)
	case dificuladade
	when 1
		maximo = 30
	when 2
		maximo = 60
	when 3
		maximo = 100
	when 4
		maximo = 150
	else
		maximo = 200
	end
	puts "Escolhendo um numero secreto entre 1 e #{maximo}..."
	sorteado = rand(maximo) + 1
  puts "Já escolhi! Que tal advinhar qual o numero eu escolhi?"
  sorteado
end


def pede_um_numero(chutes, tentativa, limite_de_tentativas)
 puts "\n \n \n \n \n"
 puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
 puts "Chutes até agora: #{chutes}"
 puts "Digite o numero"
 chute = gets.strip
 puts "Será que acertou? Você chutou #{chute}" 
 chute.to_i
end

def ganhou
  puts
  puts "             OOOOOOOOOOO               "
  puts "         OOOOOOOOOOOOOOOOOOO           "
  puts "      OOOOOO  OOOOOOOOO  OOOOOO        "
  puts "    OOOOOO      OOOOO      OOOOOO      "
  puts "  OOOOOOOO  #   OOOOO  #   OOOOOOOO    "
  puts " OOOOOOOOOO    OOOOOOO    OOOOOOOOOO   "
  puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
  puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
  puts "OOOO  OOOOOOOOOOOOOOOOOOOOOOOOO  OOO0  "
  puts "00O0O  OOOOOOOOOOOOOOOOOOOOOOO  OOO00  "
  puts " OOOO   OOOOOOOOOOOOOOOOOOOO  OOOO0    "
  puts "   OOOOO   OOOOOOOOOOOOOOO   OOOO      "
  puts "     OOOOOO   OOOOOOOOO    OOOOO       "
  puts "       OOOOOO           OOOOOO         "
  puts "           OOOOOOOOOOOO000             "
  puts
  puts "               Acertou!                "
  puts
end

def verifica_se_acertou(numero_secreto, chute)

   acertou = chute == numero_secreto
 
  if acertou
    ganhou
    return true
  end

  maior = numero_secreto > chute
  if maior
     puts "Que pena! o numero secreto é maior."
  else
     puts "Que pena! o numero secreto é menor."
  end
  false
end


def joga(nome, dificuladade)	
numero_secreto = sorteia_numero_secreto dificuladade


limite_de_tentativas = 5
chutes = []
ponto_ate_agora = 1000


for tentativa in 1..limite_de_tentativas
	   chute = pede_um_numero chutes, tentativa, limite_de_tentativas 
	   chutes << chute

	   if nome == "junior"
	   	ganhou
	   	break
	   end

	   pontos_a_perder = (chute - numero_secreto).abs / 2
	   ponto_ate_agora -= pontos_a_perder 
	 
	   if verifica_se_acertou numero_secreto, chute 
	      break
	   end
	end

	puts "Você ganhou #{ponto_ate_agora} pontos."
end

def nao_quer_jogar?
	puts "Deseja jogar novamente? (S/N)"
	quero_jogar = gets.strip
	nao_quero_jogar = quero_jogar.upcase == "N"
end

nome = da_boas_vindas
dificuladade = pede_dificuldade

loop do
	joga nome, dificuladade
	if nao_quer_jogar?
		break
	end
end

