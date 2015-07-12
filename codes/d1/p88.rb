class Student

def initialize name
  @name = name
end

def greet
  puts "hi, i am #{@name}"
end

end


tony = Student.new "Tony"
jason = Student.new "Jason"

tony.greet
jason.greet

tony.name
