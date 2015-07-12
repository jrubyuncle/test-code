def avg stu

    total = 0
    stu.each {|one| total += one[:score]}

    total/stu.size
end

stu = [
{name: "tony", score: 44},
{name: "dave", score: 55},
{name: "mary", score: 66}
]

puts avg(stu)