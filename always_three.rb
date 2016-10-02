def always_3(original)
puts "The final number is " + ((((original+5)*2-4)/2)-original).to_s
end
puts "Give me a number man"
original=gets.to_i
puts "Always " + always_3(original).to_s
