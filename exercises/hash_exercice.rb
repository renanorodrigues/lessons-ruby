i = 0
hash = {}

while i < 3 do 
  puts "Informe a chave: "
  key = gets.chomp
  puts "\n Informe o valor: "
  value = gets.chomp
  hash[key] = value
  i += 1
end

hash.map do |key, value| 
  puts "\n"
  puts "UMA DAS CHAVES É #{key} e o seu valor é #{value}"
end
