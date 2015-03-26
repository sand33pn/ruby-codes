table = ["Chapter 1: ", "Numbers", "page 1", "Chapter 2: ",  "Letters", "page 72", "Chapter 3: ", "Variables", "page 118"]
puts
puts "Table of Contents".center(50)
puts
i = 0
3.times do
	puts "#{table[i]+table[i+1].ljust(15)+table[i+2].rjust(15)}"
	i = i+3
end
puts