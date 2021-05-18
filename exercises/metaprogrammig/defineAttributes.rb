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
# ------------------------------------------------------------------------------------
# Define methods and attributes in runtime
class User
  def initialize(name)
    @name = name
  end
end

joao = User.new("João")

# The instance 'joao' now have an method instance 'emailValid' and attribute 'email'
class << joao
  attr_accessor :name, :email
  
  def emailValid?
    self.email.match?("@")
  end
end

joao.email = "joao@email.com" # returns true
puts joao.emailValid?