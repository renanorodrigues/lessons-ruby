# HackerRank - Enumerable Groupy By

def group_by_marks(marks, pass_marks)
  marks.group_by { |key, value| value >= pass_marks ? "Passed" : "Failed" }
end

marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60}
group_by_marks(marks, 30)

#------------------------------------------------------------------------------------------------

# Grupo de números divididos por 3 e os que não são
(1..20).group_by {|n| n % 3 == 0}

#------------------------------------------------------------------------------------------------

# Agrupar bandas em ordem alfabetica
bandas = %w(Metallica Megadeath JudasPriest Beatles Yes PinkFloyd BlackSabbath Aerosmith)
bandas.sort!

bandas.group_by {|b| b[0].to_sym} # Aqui eu agrupo por letra inicial
# E aqui eu agrupo também por letra, mas informo o total de bandas que começam por aquela inicial
bandas.group_by {|b| b[0].to_sym}.transform_values {|value| value.count}

#------------------------------------------------------------------------------------------------
