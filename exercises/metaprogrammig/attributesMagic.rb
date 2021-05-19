require 'byebug'
# For algorithm in the course - Danilo Aparecido

# attr_accesor build
module AtributosDinamicos
  def atributos(*attrs)
    attrs.each do |attr|
      define_method("#{attr}=") do |value|
        instance_variable_set "@#{attr}", value
      end
    
      define_method("#{attr}") do
        instance_variable_get "@#{attr}"
      end
    end
  end
end

class Contact
  extend AtributosDinamicos
  atributos :email, :telephone, :phone, :whatsapp
end

contact = Contact.new

byebug

contact.email = "email@com"