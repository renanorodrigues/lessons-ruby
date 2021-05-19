require 'byebug'

class Player
  def initialize(userName)
    @userName = userName
  end  
end

user1 = Player.new("Rafael")

# Access the variable that cannot be read before
user1.instance_eval { puts @userName } 

# Define methods instance
Player.class_eval do 
  def apresentation
    "#{@userName} is a player!"
  end
end

user1.apresentation

# Define method class
Player.instance_eval do
  def currentLevel level
    puts "The player is in #{level}lvl"
  end
end

Player.currentLevel 12
