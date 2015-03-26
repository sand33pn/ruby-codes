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

year,month,day = 0

year = (first_year - second_year).abs
if year == 0
	#then do nothing
elsif first_birthdate < second_birthdate
	if first_month > second_month
		year-=1
	end
elsif first_birthdate > second_birthdate
	if first_month < second_month
		year-=1
	end
end


if first_birthdate < second_birthdate
	if first_month > second_month
		month = second_month - first_month + 12
	else
		month = second_month - first_month
	end
elsif first_birthdate > second_birthdate
	if first_month < second_month
		month = first_month - second_month + 12
	else
		month = first_month - second_month
	end	
end

if month == 0
	#then do nothing
elsif first_birthdate < second_birthdate
	if first_day > second_day
		month-=1
	end
elsif first_birthdate > second_birthdate
	if first_day < second_day
		month-=1
	end
end



if first_birthdate < second_birthdate
	day = (second_birthdate - Time.mktime(first_year+year+(first_month+month)%12, (first_month+month)/12,first_day)).to_i/3600/24
elsif second_birthdate < first_birthdate
	day = (first_birthdate - Time.mktime(second_year+year+(second_month+month)%12, (second_month+month)/12,second_day)).to_i/3600/24
end

puts
puts 
puts "#{first} and #{second} were born #{year} years #{month} months and #{day} days apart..!"