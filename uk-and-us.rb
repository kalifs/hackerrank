line_count = gets.chomp.to_i

words = []
test_words = []

1.upto(line_count) do |i|
  words += gets.chomp.split(" ").select{|word| word.match(/.*((se)|(ze))$/) }
end

line_count = gets.chomp.to_i

1.upto(line_count) do
  test_words << gets.chomp
end

used_words = []

test_words.each do |test_word|
  word = test_word.sub(/ze$/, "se")
  word_count = words.count{|w| w == word || w == test_word }
  puts word_count
end
