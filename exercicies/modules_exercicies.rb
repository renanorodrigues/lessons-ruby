# ------------------------------------------------------------------------

# Exercice II

module Person 
  class Juridic 
    def initialize(nome, cnpj)
      @nome = nome
      @cnpj = cnpj
    end

    def add 
      puts "Pessoa Jurídica Adicionada"
      puts "\n"
      puts "nome: #{@nome}"
      puts "\n"
      puts "cnpj: #{@cnpj}"
    end
  end 

  class Physical 
    def initialize(nome, cpf)
      @nome = nome
      @cpf = cpf
    end

    def add 
      puts "Pessoa Física Adicionada"
      puts "\n"
      puts "nome: #{@nome}"
      puts "\n"
      puts "cpf: #{@cpf}"
    end
  end
end 

empresa = Person::Juridic.new("L7 Logistica", "641.5150.2051/000-1").add 
pessoaf = Person::Physical.new("Thiago Bolsobosta", "0212.515.0551.12").add 