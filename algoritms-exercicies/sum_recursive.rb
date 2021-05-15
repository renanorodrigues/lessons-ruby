def sum list
  return nil if list.empty? 

  if list.size == 1 
    list[0]
  else 
    sum(list[1..-1]) + list.shift
  end
end

puts sum([2,3,8,5, 11, 8])