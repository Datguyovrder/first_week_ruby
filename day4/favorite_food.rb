#Exercise 1
def fav_food
  array = []
  idx=0
  num_loops = 5
  num_loops.times do
    puts "Please enter your favorite food"
    input = gets.chomp
    array[idx] = input
    idx += 1
  end

  return array
end

puts
fav = fav_food
fav.each do |elem|
  puts "I love #{elem}"
end

ctr=0
puts
fav.each do |elem|
  puts "#{ctr+=1}. #{elem}"
end

#Exercise 2
puts
ctr2=0
11.times do
  p ctr2
  ctr2 += 1
end

# unless result
#   puts "HELLO!"
# end 
# result is a boolean which means unless
# true or false will puts print "Hello"

def date_or_marry(num_receipes, food, num_languages, language)
  if (num_receipes > 10 && num_languages > 5)
    return "date"
  end
  if (food = "crepe", language = "french")
    return "marry"
  end
end

puts
p date_or_marry(11, "apple", 6, "spanish")
p date_or_marry(9, "crepe", 4, "french")

#Exercise 3
accounts_list = []
num_runs = 2
num_runs.times do 
  individual = {} 

  print "Enter first name: " 
  individual[:first_name] = gets.chomp

  print "Enter last name: "
  individual[:last_name] = gets.chomp

  print "Enter email: "
  individual[:email] = gets.chomp

  puts
  individual[:acct_id] = rand(1000000000..9999999999)
  accounts_list << individual
end

p accounts_list

#Exercise 4