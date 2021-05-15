# Exercice I

# my_function = lambda {puts "Hello World!"}
# my_function.call

# -------------------------------------------------------------------
# Exercice II

# other_lambda = -> {puts "Other lambda!"}
# other_lambda.call

# -------------------------------------------------------------------
# Exercice III

# conte_par = -> (numbers){ numbers.select {|n| n % 2 == 0} }
# numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# result = conte_par.call(numeros)
# puts result

# -------------------------------------------------------------------
# Exercice IV

# data = []

# 10.times do 
#   data.push( rand(0..99) )
# end 

# somatrio = lambda do |numbers| 
#   sum = 0
#   numbers.each { |n| sum += n }
#   puts "Números: #{data}"
#   puts "\n"
#   puts "Soma total: #{sum}"
# end

# somatrio.call(data)

# -------------------------------------------------------------------
# Exercice V 

# data = []

# 20.times do 
#   data.push( rand(0..999) )
# end 

# maior_numero = lambda do |numbers|
#   maior = 0
#   aux = 0 
#   numbers.each.with_index do |number, index|
#     break if numbers[index] == numbers.last
#     aux = maior
#     maior = (number + numbers[index + 1] + (number - numbers[index + 1]).abs) / 2
#     maior = aux if aux > maior
#   end
#   puts "-----------------------------------------------------------------------------------"
#   puts "Números: #{numbers}"
#   puts "\n"
#   puts "Maior número: #{maior}"
#   puts "-----------------------------------------------------------------------------------"
# end 

# maior_numero.call(data)

# -------------------------------------------------------------------
# Exercice VI 

# def myFunction(firstLambda, secondLambda)
#   firstLambda.call
#   print "\n"
#   secondLambda.call 
#   print "\n"
# end 

# lambda1 = -> {print "First called"}
# lambda2 = -> {print "Second called"}

# myFunction(lambda1, lambda2)