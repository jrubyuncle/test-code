

answer = 1 + rand(10)

puts "guess ...."

while true
    user = gets.to_i

    if user == answer
      puts "correct"
      break
    else
      if user < answer
         puts "try again, larger"
      else
        puts "try again, smaller"
      end
    end
end
