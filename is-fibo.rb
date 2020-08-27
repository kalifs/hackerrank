arr= [0,1,1]
LIM = 10**10
sum = arr[1] + arr[2]

cur = arr[2]

while sum <= LIM
  arr << sum
  prev = cur
  cur = sum
  sum = prev + cur
end

length = gets.chomp.to_i


1.upto(length) do
  n = gets.chomp.to_i
  if arr.include?(n)
    puts "IsFibo"
  else
    puts "IsNotFibo"
  end
end