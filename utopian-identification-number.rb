length = gets.chomp.to_i

tests = []
1.upto(length) do
  line = gets.chomp
  if line.match(/^[a-z]{0,3}[0-9]{2,8}[A-Z]{3,}$/)
    puts "VALID"
  else
    puts 'INVALID'
  end
end