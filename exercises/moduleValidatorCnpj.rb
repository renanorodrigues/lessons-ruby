module ValidatorCNPJ
  def validCnpj?
    valid = self.cnpj.match?(/^\d{2}\.\d{3}\.\d{3}\/\d{4}\-\d{2}$/)
    return valid ? "O CNPJ informado é valido." : "O CNPJ informado não é valido!"
  end
end

class Company
  attr_accessor :cnpj
  include ValidatorCNPJ
  
  def initialize(cnpj)
    @cnpj = cnpj
  end
end

puts Company.new("35.929.842/0001-07").validCnpj?