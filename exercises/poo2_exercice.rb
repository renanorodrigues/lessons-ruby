class Produto 
  attr_accessor :nome, :preco
  def initialize(nome, preco)
    @nome = nome
    @preco = preco
  end
end

class Mercado 
  def initialize(produto)
    @produto = produto
  end

  def comprar
    print "\n"
    print "Você comprou o produto #{@produto.nome} no valor de R$ #{@produto.preco}."
    print "\n"
  end
end 

prod1 = Produto.new("Queijo", 18)
merc = Mercado.new(prod1)
merc.comprar




