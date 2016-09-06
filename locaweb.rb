def da_boas_vindas
  puts
  puts "        P  /_\  P                              "
  puts "       /_\_|_|_/_\                             "
  puts "   n_n | ||. .|| | n_n         Bem vindo a     "
  puts "   |_|_|nnnn nnnn|_|_|          Locaweb!       "
  puts "  |' '  |  |_|  |'  ' |                        "
  puts "  |_____| ' _ ' |_____|                        " 
  puts "        \__|_|__/                              "
  puts
  puts "Qual é o seu nome?"
  nome = gets.strip 
  puts "\n \n \n"
  puts "Olá " + nome 
  nome
end

def pede_conhecimento
  puts "Você conhece os objetivos da locaweb?"
  puts "(1) Sim (2) Não (3) Não tenho certeza"
  puts "Escolha: "
  conhecimento = gets.to_i
end

def falando_da_locaweb(conhecimento)
	case conhecimento
	when 1
		puts "Que bom! Então vamos só relembrar!"
	when 2
		puts "Não? Então, deixa lhe dizer quais são!"
	else
		puts "Nesse caso, vou contar para que que você não esqueça."
	end
end


def obetivos
  puts "\n \n"
  puts "Nossos objetivos são:"
  puts "\n"
  puts "  1 - Investir em TECNOLOGIA"
  puts "\n"
  puts "  2 - Desenvolver produtos para ajudar os NEGÓCIOS de nossos clientes."
  puts "\n"
  puts "  3 - Atuar como apoio para nossos parceiros PROSPERAREM"
end

def tchau
  puts "\n \n"
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
  puts "               Até mais!               "
  puts
end


nome = da_boas_vindas
conhecimento = pede_conhecimento
falando_da_locaweb(conhecimento)
obetivos
tchau

