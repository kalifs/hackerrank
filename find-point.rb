require 'matrix'
length = gets.chomp.to_i

tests = []
1.upto(length) do
  tests << gets.chomp.split(" ").map(&:to_i)
end

tests.each do |test|
  point = Matrix[[test[2], test[3]]] - (Matrix[[test[0], test[1]]] - Matrix[[test[2], test[3]]])
  puts point.to_a.first.join(" ")
end