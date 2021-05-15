grafo = {
  inicio: {a: 6, b: 2}, 
  a:{fim: 1}, 
  b: {a: 3, fim: 5}, 
  fim: {}
}

custos = {a: 6, b: 2, fim: Float::INFINITY}

pais = {a: :inicio, b: :inicio, fim: nil}

@processed = []

def find_lowest_cost_node(custos)
  lowest_cost = Float::INFINITY 
  lowest_cost_node = nil 

  custos.each do |node, cost| 
    if cost < lowest_cost && !@processed.member?(node)
      lowest_cost = cost 
      lowest_cost_node = node 
    end 
  end 
  lowest_cost_node 
end 

node = find_lowest_cost_node(custos)

until node.nil?
  cost = custos[node]
  neighbors = grafo[node]
  neighbors.keys.each do |n| 
    new_cost = cost + neighbors[n]
    if custos[n] > new_cost 
      custos[n] = new_cost 
      pais[n] = node 
    end 
  end 
  @processed << node
  node = find_lowest_cost_node(custos)
end 

puts "Custo a partir do começo para cada vértice: "
puts custos