# Define method with block is an argument (Proc)
# Never use a lambda!
def showInfo(&block)
  block
end

nameUser = showInfo do |name|
  puts name
end

puts nameUser.call("Rogério")

puts"--------- Modify Proc -----------"
# With this a can modify a block in a runtime

nameUser = showInfo do |fullName, email|
  puts "User: #{fullName}"
  puts "Email: #{email}"
end

nameUser.call("Rodrigo", "rodrigo@email.com")