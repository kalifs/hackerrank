def  insertionSort( ar)
  val = ar.last
  i = ar.size-2
  current = ar[i]
  while i > -1 && val < current
    ar[i+1] = current
    i -=1
    current = ar[i]
    puts ar.join(" ")
  end
  ar[i+1] = val
  puts ar.join(" ")
end
# Tail starts here
count = 5 #gets.to_i
ar = %w(1 4 3 5 6 2).map {|i| i.to_i}

insertionSort( ar )