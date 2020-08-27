#!/usr/bin/ruby
def  insertionSort(ar)
  i = 1
  count = 0
  while i < ar.size
    if ar[i] < ar[i-1]
      j = i
      while j > 0 && ar[j] < ar[j-1]
        temp = ar[j]
        ar[j] = ar[j-1]
        ar[j-1] = temp
        j -=1
        count +=1
      end
    end
    i+=1
  end
  puts count
end
cnt = gets.to_i
ar = gets.strip.split(" ").map! {|i| i.to_i}
insertionSort(ar)