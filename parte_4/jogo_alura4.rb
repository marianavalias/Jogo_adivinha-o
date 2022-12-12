def da_boas_vindas #funçao simples que não recebe argumento
  puts "Bem vindo ao jogo da adivinhação" #puts é para impressão 
  puts "Qual é o seu nome?" 
  nome = gets.strip #guardando esse valor, variavel é o valor que posso alterar 
  puts "\n\n\n\n\n\n\n" #pular linha 
  puts "Começaremos o jogo para você, #{nome}"
end
  
def sorteia_numero_secreto #função tudo que criado em uma função não é acessado de "fora" dela, assim não sendo global apenas local
  puts "Escolhendo um número secr eto entre 0 e 200..." 
  sorteado = 175 
  puts "Escolhido... que tal adivinhar hoje nosso"
  return sorteado
end
  
def pede_um_numero(chutes, tentativa, limite_de_tentativas) #função com retorno, parametro/argumento 
  puts "\n\n\n\n"
  puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
  puts "Chutes até agora: #{chutes}"
  puts "Entre com o numero" 
  chute = gets.strip
  puts "Será que acertou? Você chutou #{chute}"
  puts chute.to_i == sorteia_numero_secreto 
  return chute.to_i #para conventer uma unica vez 
end
  
def verifica_se_acertou(numero_secreto, chute) #encapsular  
    
  acertou = numero_secreto == chute #variavel que isola 
  
  if acertou #controle de fluxo condicional
    puts "Acertou"
    return true 
  end
#caso erre, early return, visibilidade do codigo 
  maior = numero_secreto > chute
  
  if maior
    puts "O numero secreto e maior!"
    else 
      puts "O numero secreto e menor!"
    end 
      return false #retorna false em qualquer um que esta no else
  end
  
  da_boas_vindas 
  numero_secreto = sorteia_numero_secreto #devolve o valor
  
  
  limite_de_tentativas = 5
  chutes = []
  
  for tentativa in 1..limite_de_tentativas #loop
   
    chute = pede_um_numero(chutes, tentativa, limite_de_tentativas) #(), é opicional
    chutes << chute #já coloca como ultimo elemento do Array
    
    if verifica_se_acertou(numero_secreto, chute)
      break
    end
  end