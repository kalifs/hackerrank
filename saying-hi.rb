n = gets.chomp.to_i

lines = []

1.upto(n) do
  lines << gets.chomp
end

lines.each do |line|
  if line.match(/^hi\s(?!d)/i)
    puts line
  end
end