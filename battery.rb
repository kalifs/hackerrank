data = File.read(File.join(File.dirname(__FILE__), "training.txt")).split("\n").map{|a| a.split(",").map(&:to_f)}
p data