puts "Bem vindo ao jogo da adivinhação" #puts é para impressão 
puts "Qual é o seu nome?" 
nome = gets #guardando esse valor, variavel é o valor que posso alterar 

puts "\n\n\n\n\n\n\n" #pular linha 
puts "Começaremos o jogo para você, " + nome #concaenar string
#string é diferente de um numero inteiro
 
puts "Escolhendo um número secreto entre 0 e 200..." 
numero_secreto = 175 
puts "Escolhido... que tal adivinhar hoje nosso"

limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas #loop

    puts "\n\n\n\n"
    puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
    puts "Entre com o numero" 
    chute = gets
    puts "Será que acertou? Você chutou" + chute
    puts chute.to_i == numero_secreto #converte um numero texto para numero inteiro

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
