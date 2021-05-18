# Exercicio I

# response = [
#   {active: true, message: "Nothing to do in my house."},
#     {active: false, message: "Nothing to do in my house."},
#       {active: true, message: "Nothing to do in my house."},
#         {active: false, message: "Nothing to do in my house."},
#           {active: true, message: "Nothing to do in my house."}]

# filter = response.select {|r| r[:active]}

# puts filter

# -------------------------------------------------------------------------------------
# Exercicio II

# data_medical = {
#   paciente: "Thiago dos Santos Oliveira",
#   local: "Hospital Universitário", 
#   horarios: [
#     {retorno: true, hora: "09:12:00", data: "15-09-2021"}, 
#     {retorno: false, hora: "09:00:00", data: "15-09-2022"},
#     {retorno: true, hora: "08:00:00", data: "15-09-2023"},
#     {retorno: true, hora: "07:12:00", data: "15-09-2024"}
#   ], 
#   enfermidade: "Rabugento e hipertenso"
# }

# result = data_medical[:horarios].select {|h| h[:hora] < "09:00:00" }
# print "\n"
# print result
# print "\n"

# -------------------------------------------------------------------------------------

# Exercicio III 

# files = ["aba.gif", "bob.png", "chat.jpeg", "lolipop.git", "lol.jpg", "car.png", "amber.gif"]

# result = files.select {|f| f[/\.gif$/] }
# print "\n"
# print result
# print "\n"

# -------------------------------------------------------------------------------------

# Exercicio IV 

# numbers = [11, 222, 3, 4, 5, 63, 7, 8, 9, 10, 11, 12, 13, 14, 15]

# result = numbers.select {|n| n < 10 }
# print "\n"
# print result
# print "\n"

# -------------------------------------------------------------------------------------
