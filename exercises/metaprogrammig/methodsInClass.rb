require 'byebug'

class Autor
  attr_accessor :fullName

  def initialize(fullName)
    @fullName = fullName
  end
end

rogerio = Autor.new("rogerio")
puts rogerio.fullName
puts "--------------------------"

class Autor
  class << self
    def profission
      puts "É um autor de livros em inicio de carreira."
    end
  end
end

Autor.profission