length = gets.chomp.to_i

tests = []
1.upto(length) do
  tests << gets.chomp
end

tests.each do |test|
  n = test.to_i
  digits = test.split("")
  sum = 0
  digits.each do |digit|
    d = digit.to_i
    if d != 0 && n % d == 0
      sum += 1
    end
  end
  puts sum
end