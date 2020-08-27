length = gets.chomp.to_i

sentences = []
1.upto(length) do
  sentences << gets.chomp
end

sentences.each do |sentence|
  if sentence.match(/^hackerrank(.*hackerrank)?$/)
    puts 0
  elsif sentence.match(/^hackerrank.+$/)
    puts 1
  elsif sentence.match(/^.+hackerrank$/)
    puts 2
  else
    puts -1
  end
end