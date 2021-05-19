require 'byebug'

module Utilities
  def persona_helper(methodName)
    define_method(methodName) do |&block|
      block
    end
  end
end

# Behavior Inheritance
class Client
  extend Utilities
end

saldoPoints = Client.persona_helper :pontosFidelidade

saldoPoints = Proc.new do |points|
  puts "Caro cliente, seus pontos de fidelidade são #{points}"
end

saldoPoints.call(45)
