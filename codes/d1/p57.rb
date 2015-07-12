def get_sum input
sum = 0

input.each {
  |i| puts i
  sum += i
}
puts sum

end

get_sum [1,2,3,4,5]