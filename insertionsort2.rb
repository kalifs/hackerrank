#!/usr/bin/ruby
def  insertionSort(ar)
  i = 1
  while i < ar.size
    if ar[i] < ar[i-1]
      j = i
      while j > 0 && ar[j] < ar[j-1]
        temp = ar[j]
        ar[j] = ar[j-1]
        ar[j-1] = temp
        j -=1
      end
    end
    puts ar.join(" ")
    i+=1
  end
  ar
end
cnt = 4#gets.to_i
ar = %w(1 4 3 5 6 2).map! {|i| i.to_i}
insertionSort(ar)
