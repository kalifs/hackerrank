count = gets.chomp.to_i
limits = []
a_arr = []
b_arr = []
1.upto(count) do
  n, lim = gets.split(" ").map(&:to_i)
  limits << lim
  a_arr << gets.chomp.split(" ").map(&:to_i)
  b_arr << gets.chomp.split(" ").map(&:to_i)
end

0.upto(a_arr.size - 1) do |index|
  arr_one = a_arr[index].sort
  arr_two = b_arr[index].sort{|f,l| l<=>f}
  limit = limits[index]

  size = arr_one.size
  counter = 0
  bad = false


  while counter < size
    if arr_one[counter] + arr_two[counter] < limit
      puts "NO"
      bad = true
      break
    end
    counter +=1
  end

  unless bad
    puts "YES"
  end
end