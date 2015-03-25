count = 0
while count != 3
	me = gets.chomp
	if me == "BYE"
		count+=1
	else
		count = 0
		if me != me.upcase
			puts "HUH?!  SPEAK UP, SONNY!"
		else
			year = rand(21) + 1930
			puts "NO, NOT SINCE #{year}!"
		end
	end

end