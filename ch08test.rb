puts "Enter first person's name :"
first = gets.chomp
puts "Enter second person's name :"
second = gets.chomp

puts "Enter #{first}'s birth year(yyyy) :"
first_year = gets.chomp.to_i
puts "Enter #{first}'s birth month(mm) :"
first_month = gets.chomp.to_i
puts "Enter #{first}'s birth day(dd) :"
first_day = gets.chomp.to_i

puts "Enter #{second}'s birth year(yyyy) :"
second_year = gets.chomp.to_i
puts "Enter #{second}'s birth month(mm) :"
second_month = gets.chomp.to_i
puts "Enter #{second}'s birth day(dd) :"
second_day = gets.chomp.to_i

first_birthdate = Time.mktime(first_year, first_month, first_day)
second_birthdate = Time.mktime(second_year, second_month, second_day)

difference = first_birthdate - second_birthdate

