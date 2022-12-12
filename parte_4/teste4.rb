chutes = [176, 100, 130, 150, 175] #array, resgatar
chutes [3] = 300 #atribuir 

puts chutes [0]
puts chutes [1]
puts chutes [2]
puts chutes [3]
puts chutes [4]

puts 

chutes = []

chute = 176
tentativa = 1
chutes << chute #para colocar o array sozinho na ultima posição


chute = 100
tentativa = 2
chutes[tentativa - 1] = chute 

chute = 130
tentativa = 3
chutes[tentativa - 1] = chute 

puts chutes [0]
puts chutes [1]
puts chutes [2]

puts
puts 

for contador in 0..(tentativa-1)
    puts "Chute: " + chutes[contador].to_s #podendo usar o [contador - 1], para que o array "puxe" da posição 0
end

puts chutes #imprime o array automaticamente 
puts 
puts 

#obs: sempre começa com indice 0 (posição)
#não tem como somar array e string >> trasdormar em .to_s

puts chutes.size #quantos elementros tenho dentro de um array
for chute in chutes #passar por todos elementos de array:
    puts chutes
end 


nome = gets.strip #para retirar caracteres em braco, tanto na esquerda quanto na direita
puts "#{nome} tem #{nome.size} caracteres" #variavel dentinterplolar/colocar valores em uma string 
#puts nome + " tem " + nome.size.to_s + " caracteres", sendo simplificada acima sem ter que colocar o to_s
puts "Resultado: "
puts nome[9]

puts " Mariana ".strip #metodo, pois esta sendo definida atraves um valor e tendo um controle 
#de função, só pode ser execultado dentro de um valor, menos numero, aplicação de escopo
#strip > string
#.to_s > numero
#.to_i > string 
#size > string, array
# com valor é metodo, sem valor função

#teste em linha de comando >> irb
#ex: nome = "Mariana" | numero = 15 > impar : numero.odd? > par : numero.even? > transforma em maiusculo a string : nome.ipcase

#imprime os metodos > nome.methods | numero.methods