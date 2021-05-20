module Any
  def self.included(klass)
    klass.send(:alias_method, :my_new_method, :my_method)
    block = Proc.new do
      puts 'agora lascou hahaha'
    end
    klass.send(:define_method, :my_method, block)
  end
end

class Some
  def my_method
    puts 'hahahaha'
  end
end

Some.class_eval do
  include Any
end

puts "-------------"
Some.new.my_method
puts "-------------"
Some.new.my_new_method

#Desafio:
#Faça as alterações necessarias para que eu consigo realizar essas chamadas:

#Some.new.my_method { puts 'agora lascou hahaha' } 
#Some.new.my_new_method

#E na saida do console printa isso:
# agora lascou hahahah
# hahahahahah