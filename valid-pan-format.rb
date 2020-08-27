n = gets.chomp.to_i
pans = []

1.upto(n) do
  pans << gets.chomp
end

pans.each do |pan|
  if pan.match(/[A-Z]{5}\d{4}[A-Z]{1}/)
    puts "YES"
  else
    puts "NO"
  end
end