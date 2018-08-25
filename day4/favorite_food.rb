#Exercise 1
def fav_food
  array = []
  idx=0
  num_loops = 5
  num_loops.times do
    print "Please enter your favorite food: "
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

  valid_email = false
  while (!valid_email)
    print "Enter email: "
    email = gets.chomp
    if(email.include?("@") && email.slice(email.length-4, email.length) == ".com")
      individual[:email] = email
      valid_email = true      
    else
      puts "Email must have @ and end with .com"
    end  
  end

  puts
  individual[:acct_id] = rand(1000000000..9999999999)
  accounts_list << individual
end

p accounts_list
puts
pass = false

while (!pass)
  print "Enter account number: "
  input = gets.chomp
  ctr=0
  for x in 0...accounts_list.length
    if (input.to_i == accounts_list[x][:acct_id])
      pass = true
      puts "Account found"
      puts "==============="
      puts "#{accounts_list[x][:first_name]} #{accounts_list[x][:last_name]}"
      puts accounts_list[x][:email]
      break
    else
      ctr += 1
      if (ctr == accounts_list.length)
        puts "Account does not exist"
      end
    end
  end
end

#Exercise 4
num_people=0
people_array = []
done = false
puts
while(!done)
  print "Enter student name (q when done): "
  name = gets.chomp
  if (name.downcase == "q")
    done = true
  else
    people_array << name
    num_people += 1
  end
end

p people_array
p num_people

def even_group(arr)
  idx=0
  idx2=0
  arr_length = arr.length / 2
  arr_length.times do
    puts "group: #{arr[idx]} #{arr[idx2=idx+1]}"
    idx+=2
  end
end

def odd_group(arr)
  idx=0
  idx2=0
  arr_length = arr.length - 3
  if (arr_length == 0)
    puts "group: #{arr[idx]} #{arr[idx2=idx+1]} #{arr[idx2=idx+2]}"
  else
    p arr_length / 2
    (arr_length / 2).times do
      puts "group: #{arr[idx]} #{arr[idx2=idx+1]}"
       idx+=2
    end

  puts "group: #{arr[arr_length]} #{arr[arr_length+1]} #{arr[arr_length+2]}"
  end
end

if (num_people % 2 == 0)
  even_group(people_array)
else
  odd_group(people_array)
end