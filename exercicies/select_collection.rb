# Retornar so numeros primos em um array
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# result = array.select do |number| 
#   number % 2 == 0
# end 

result = array.select {|number| number % 2 == 0}

puts result

