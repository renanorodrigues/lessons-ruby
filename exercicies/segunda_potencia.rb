i = 0
array = []

while i < 3 do
  puts "Digite um numero: "
  array[i] = gets.chomp.to_i
  array[i] = array[i] ** 2
  i += 1
end

puts "\n" 
puts array