grafo = {}
grafo = {inicio: {a: 6, b: 2}, a: {c: -2, fim: 1}, b: {a: 3, fim: 5}, c: {b: -1}, fim: {}}

costs = {}
costs = {inicio: 0, a: Float::INFINITY, b: Float::INFINITY, c: Float::INFINITY, fim: Float::INFINITY}

fathers = {}
fathers = {a: :nil, b: :nil, c: nil, fim: nil}

def bellman_ford(grafo, costs, fathers)
  num_vertices = grafo.count - 1
  
  num_vertices.times do 
    grafo.each do |pai, aresta| 
      aresta.each do |vizinho, peso| 
        if costs[pai] != Float::INFINITY && costs[pai] + peso < costs[vizinho]
          costs[vizinho] = costs[pai] + peso
          fathers[vizinho] = pai
        end
      end
    end

    # Step III - Verify negative weight cycles 
    grafo.each do |pai, aresta| 
      aresta.each do |vizinho, peso| 
        if costs[pai] != Float::INFINITY && costs[pai] + peso < costs[vizinho]
          true
        end
      end
    end
  end 

  print costs
end

bellman_ford(grafo, costs, fathers)