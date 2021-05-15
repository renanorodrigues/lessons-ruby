# puts "------------Lista de Compras----------------------"
# file = File.open('list.txt')
# file.each.with_index do |line, index| 
#   puts "#{index}: #{line}" 
# end

# --------------------------------------------------------------- 

file = File.open('example.txt')
file.each do |line|
  puts line
end 
  