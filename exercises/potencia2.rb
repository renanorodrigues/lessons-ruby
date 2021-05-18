def mult(numbers, &block)
  if block_given?
    numbers.each do |number|
      block.call(number)
    end
  else 
    puts "Informar bloco"
  end
end

values = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# mult(values) do |value|
#   puts "#{value * value}"
# end

mult(values) {|value| puts "#{value * value}"}
mult(values)