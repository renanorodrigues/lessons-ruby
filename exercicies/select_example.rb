numbers = {}
numbers = {a: 10, b: 30, c: 20, d: 25, e: 15}
maior = 0

numbers.map {|key, value| maior = value if value > maior}
puts maior