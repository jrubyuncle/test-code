me = {"name" => "wes",
"about" => "a father",
"height" => 1.78,
"weight" => 62,
"lang" => ["chi","eng","ja"]
}

bmi = me["weight"] / me["height"] ** 2
puts bmi
puts "i am #{ me["name"]}"
puts "i can speak #{ me}"

puts me.class
