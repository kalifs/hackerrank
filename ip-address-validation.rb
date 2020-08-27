length = gets.chomp.to_i

tests = []
1.upto(length) do
  line = gets.chomp

  if line.match(/^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)((\.(?!$))|$)){4}$/)
    puts "IPv4"
  elsif line.match(/^((\d|[A-F]|[a-f]){1,4}((:(?!$))|$)){8}$/)
    puts "IPv6"
  else
    puts "Neither"
  end
end