# Exercice I

# users = {leandro: 1, douglas: 2, matheus: 3, rafael: 4}

# def fila(usuarios, &block)
#   if block_given?
#     usuarios.each do |key, value| 
#       block.call(key, value)
#     end 
#   else 
#     puts "Informe o bloco"
#   end 
# end

# fila(users) do |key, value| 
#   puts "------------------"
#   puts "Paciente: #{key.capitalize}"
#   puts "Ficha: #{value}"
#   puts "------------------"
# end
# ------------------------------------------------------------------------

# Exercice II 

# cupom_fiscal = [
#   {cod: "001", 
#   descricao: "Iorgute Natural Desnatado", 
#   preco_unitario: 1.45, 
#   qtd: 20
#   },

#   {cod: "002", 
#   descricao: "Aveia Farelada", 
#   preco_unitario: 5.00, 
#   qtd: 1
#   }
# ]


# def construct_nota(items, &block) 
#   if block_given? 
#     sum = 0
#     items.each do |key, value| 
#       block.call(key, value)
#       sum += key[:qtd] * key[:preco_unitario]
#     end
#     puts "\n"
#     puts "-------------------------------------"
#     puts "TOTAL DO CUPOM: #{sum}"
#   else 
#     puts "Informar items!" 
#   end 
# end

# construct_nota(cupom_fiscal) do |key, value| 
#   puts "#{key[:code]} - #{key[:descricao]} - R$ #{key[:preco_unitario]} - #{key[:qtd]} - Total R$:#{key[:qtd] * key[:preco_unitario]}"
#   puts "\n"
# end


# ------------------------------------------------------------------------

# Exercice III

# proc_test = proc do |txt| 
#   puts txt 
# end 

# proc_test.call 

# lambda1 = lambda do |txt| 
#   puts txt 
# end

# lambda1.call

# ------------------------------------------------------------------------

# Exercice IV 

# data = []

# 10.times do 
#   data.push( rand(0..999) )
# end 

# def myFunction 
#   proc_test = proc do |numbers| 
#     return numbers 
#   end 

#   puts "Números: #{proc_test.call([1, 2 , 3 ,4 ,5 ,6])}"
# end

# puts myFunction

# ------------------------------------------------------------------------

# Exercice V 

# my_proc = proc {|numbers| puts "#{numbers}" }

# data = []
# 10.times do 
#   data.push( rand(0..999) )
# end 

# puts my_proc.call(data)

# ------------------------------------------------------------------------

# Exercice VI

class DeMaior 
  def initialize(idade)
    @idade = idade
  end

  def to_proc
    proc {|nome| puts "#{nome} tem #{@idade} anos."} 
  end 
end 

user1 = DeMaior.new(12)
user2 = DeMaior.new(24)

["Maria", "Jhon", "Raphael"].map(&user1)