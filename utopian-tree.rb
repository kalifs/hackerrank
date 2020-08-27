
length = gets.chomp.to_i

1.upto(length) do
  cycles = gets.chomp.to_i
  height = 1
  1.upto(cycles) do |i|
    if i % 2 == 0
      height += 1
    else
      height *= 2
    end
  end
  puts height
end