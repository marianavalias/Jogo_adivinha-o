puts "Bem vindo ao jogo da adivinhação" #puts é para impressão 
puts "Qual é o seu nome?" 
nome = gets #guardando esse valor, variavel é o valor que posso alterar 

puts
puts
puts
puts
puts
puts
puts "Começaremos o jogo para você, " + nome #concaenar string
#string é diferente de um numero inteiro
 
puts "Escolhendo um número secreto entre 0 e 200..." 
numero_secreto = 175 
puts "Escolhido... que tal adivinhar hoje nosso"

puts
puts
puts
puts

puts "Tentativa 1"
puts "Entre com o numero" 
chute = gets
puts "Será que acertou? Você chutou" + chute
puts chute.to_i == numero_secreto #converte um numero texto para numero inteiro