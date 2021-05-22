def service_name(klass, private_method)
  service_name = "#{klass.capitalize}Service"
  service_class = Class.new
 
  service_class.define_singleton_method private_method do
    puts "Chamando o método #{private_method}"
  end
 
  service_class.define_singleton_method :call do
    self.send(private_method)
  end
 
  Object.const_set service_name, service_class
end

service_name("Player", "battle")

PlayerService.call