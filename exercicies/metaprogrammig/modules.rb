module CalcMath
  def power(number, expo)
    number ** expo
  end
  
  # Pega como referência a classe onde foi incluida para estender o módulo interno
  def self.included(klass)
    # Extend é para a classe estender um módulo
    klass.extend SquareMethods
  end
  
  module SquareMethods
    def squareNumber(number)
      Math.sqrt(number)
    end
    
    def squareDouble(number)
      squareNumber(number) * 2
    end
  end
end

# Include é para as instâncias de uma classe poderem utilizar os métodos do módulo
# Nesse caso a classe include e extend o módulo!
class MathMethods
  include CalcMath
end

puts "---Classe chamando método de módulo------------"
puts MathMethods.squareNumber(81)
puts MathMethods.squareDouble(225)
puts "---Instância de classe chamando método de módulo--"
puts MathMethods.new.power(5, 5)