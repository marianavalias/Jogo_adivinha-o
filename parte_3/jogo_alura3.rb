def da_boas_vindas #funçao
  puts "Bem vindo ao jogo da adivinhação" #puts é para impressão 
  puts "Qual é o seu nome?" 
  nome = gets #guardando esse valor, variavel é o valor que posso alterar 
  puts "\n\n\n\n\n\n\n" #pular linha 
  puts "Começaremos o jogo para você, " + nome
end

def sorteia_numero_secreto #tudo que criado em uma função não é acessado de "fora" dela, assim não sendo global apenas local
  puts "Escolhendo um número secreto entre 0 e 200..." 
  sorteado = 175 
  puts "Escolhido... que tal adivinhar hoje nosso"
  return sorteado
end

def pede_um_numero(tentativa, limite_de_tentativas) #parametro/argumento 
  puts "\n\n\n\n"
  puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
  puts "Entre com o numero" 
  chute = gets
  puts "Será que acertou? Você chutou " + chute
  puts chute.to_i == sorteia_numero_secreto 
  return chute
end

da_boas_vindas 
numero_secreto = sorteia_numero_secreto #devolve o valor


limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas #loop
  chute = pede_um_numero(tentativa, limite_de_tentativas)
  acertou = numero_secreto == chute.to_i #variavel que isola 

  if acertou #controle de fluxo condicional
    puts "Acertou"
    break #quebrar laco de loop
  else 
    maior = numero_secreto > chute.to_i
    if maior
      puts "O numero secreto e maior!"
    else 
      puts "O numero secreto e menor!"
    end
  end 
end
