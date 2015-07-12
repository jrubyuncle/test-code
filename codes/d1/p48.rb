def tower n
  n.times { |i|
   #puts '*'*(i*2+1)

   puts ''*(n-i) + '*'*(i*2+1)
 }
end

tower 5