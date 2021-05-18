# A key self é a própria classe e aqui estou inputando os valores na mesma
class Some
  class << self
    attr_accessor :number, :name, :age
    
    def context
      # Instance_variables me retorna todas as variáveis de instância da classe
      self.instance_variables.map do |attribute|
        { attribute => self.instance_variable_get(attribute) }
      end
    end
  end
end

Some.number = 12
Some.name = "Renan"
puts Some.context