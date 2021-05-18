class Pessoa
  attr_accessor :firstName, :fullName, :age
  
  def initialize(firstName, age=0)
    @firstName = firstName
    @age = age
  end
  
  def exibirInformacoes
    puts "Meu nome é #{@firstName}. Prazer!"
  end
end

joao = Pessoa.new("João", 18)

# Aqui eu estou sobrescrevendo a função exibirInformacoes em tempo de execução
def joao.exibirInformacoes
  puts "#{@firstName} tem #{@age} anos."
end

joao.exibirInformacoes