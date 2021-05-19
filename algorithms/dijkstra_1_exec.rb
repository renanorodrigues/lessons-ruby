grafo = {}
grafo = {
  inicio: {a: 5, b: 2}, 
  a: {d: 4, c: 2}, 
  b: {a: 8, c: 7}, 
  c: {fim: 1},
  d: {c: 6, fim: 3}, 
  fim: {}}

custs = {}
custs = {a: 6, b: 2, c: Float::INFINITY, d: Float::INFINITY, fim: Float::INFINITY}

fathers = {}
fathers = {a: :inicio, b: :inicio, c: nil, d: nil, fim: nil}

processeds_nodes = []

def select_low_cust(custs, processeds)
  low_cust = Float::INFINITY 
  nodo_low_cust = nil 
  custs.each do |key, value| 
    cust = custs[key]
    if cust < low_cust && !processeds.include?(key)
      low_cust = cust 
      nodo_low_cust = key 
    end 
  end 

  nodo_low_cust 
end


nodo = select_low_cust(custs, processeds_nodes)
while nodo != nil do 
  cust = custs[nodo]
  neighbors = grafo[nodo]
  neighbors.each do |key, value| 
    new_cust = cust + neighbors[key]
    if custs[key] > new_cust 
      custs[key] = new_cust 
      fathers[key] = nodo 
    end 
  end
  processeds_nodes.append(nodo)
  nodo = select_low_cust(custs, processeds_nodes)
end

print fathers