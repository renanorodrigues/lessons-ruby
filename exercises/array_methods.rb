arr = [1, 2, 3, 4, 5, 6, 7, 8]

# Print the elements between this range 
puts arr[1...4] # 2, 3, 4

# Displays elements from index and determined by quantity 
puts arr[2, 5] # 3, 4, 5, 6, 7

# Insert the new elements by index
arr.insert(2, 0) # arr[1, 2, 0, 3, 4, 5, 6, 7, 8]

# Delete the element by position
arr.delete_at(2) # arr[1, 2, 3, 4, 5, 6, 7, 8]

# Delete all ocorrences of element given
arr.push 2 # arr[1, 2, 3, 4, 5, 6, 7, 8, 2]
arr.delete(2) # arr[1, 3, 4, 5, 6, 7, 8]

# Select elements by condition (dont change array)
arr.select {|e| e > 2} # arr[3, 4, 5, 6, 7, 8]
arr.reject {|e| e < 3} # arr[1, 2, 3]

# Select elements and change array
arr.delete_if {|e| e == 1}  # arr[3, 4, 5, 6, 7, 8]
arr.keep_if {|e| e > 5} # arr[6, 7, 8]