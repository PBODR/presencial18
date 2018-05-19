def random
  result = [true, false].sample
  puts result
end

valor = random

if valor == true
  puts 'si'
elsif valor == false
  puts 'no'
end
