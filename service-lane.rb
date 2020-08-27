
way_size, test_size = gets.chomp.split(" ").map(&:to_i)
lane = gets.chomp.split(" ").map(&:to_i)

1.upto(test_size) do
  start_index, end_index = gets.chomp.split(" ").map(&:to_i)
  max = 3
  start_index.upto(end_index) do |i|
    if lane[i]<max
      max = lane[i]
    end
  end
  puts max
end