class Grafo 
  def initialize(vertices)
    @vertices = vertices
    @grafo = []
  end

  def add_aresta(pai, vizinho, peso)
    @grafo.push([pai, vizinho, peso])
  end 

  def print_grafo 
    puts "\n"
    @grafo.each do |vizinhos| 
      puts "Pai: #{vizinhos[0]} + Vizinho: #{vizinhos[1]}. "
      puts "Peso total: #{vizinhos[2]}"
      puts "\n"
    end
  end

  def bellman_ford 
    num_vertices = @grafo.length - 1
  
    # Step I - Inicitalization 
    dist = []
    dist.push([Float::INFINITY] * num_vertices)
    dist[0].unshift(0)
    dist = dist[0]
  
  
    # Step II - Relax
    num_vertices.times do 
      @grafo.each.with_index do |aresta, index| 
        pai = index
        vizinho = aresta[1]
        peso = aresta[2]
      
        dist[index] = 0
      end
      

      # Step III - Verify negative weight cycles 
      # @grafo.each.with_index do |aresta, index| 
      #   v = aresta[1]
      #   w = aresta[2]
      #   if dist[index] != Float::INFINITY && dist[index] + w < dist[v]
      #     true
      #   end 
      # end
    end
    print dist
  end

end

g = Grafo.new(5) 
g.add_aresta(0, 1, -1) 
g.add_aresta(0, 2, 4) 
g.add_aresta(1, 2, 3) 
g.add_aresta(1, 3, 2) 
g.add_aresta(1, 4, 2) 
g.add_aresta(3, 2, 5) 
g.add_aresta(3, 1, 1) 
g.add_aresta(4, 3, -3) 
g.bellman_ford