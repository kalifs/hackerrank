#!/usr/bin/ruby
def  partition(arr)
  p = arr[0]
  mid = [p]
  part1 = []
  part2 = []
  1.upto(arr.size - 1) do |i|
    if arr[i] < p
      part1 << arr[i]
    elsif arr[i] == p
      mid << arr[i]
    else
      part2 << arr[i]
    end
  end
  puts (part1 +mid+ part2).join(" ")
end
cnt = #gets.to_i
puts %w(2 10 3 7 9 4 6 12 8).join(" ")
ar = %w(2 10 3 7 9 4 6 12 8).map(&:to_i)#gets.strip.split(" ").map! {|i| i.to_i}
partition(ar)
puts %w(2 10 3 7 9 4 6 12 8).join(" ")