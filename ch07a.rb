words = []
word = "null"
i = 0
puts "type: "
while word != ""
	word = gets.chomp
	words[i] = word
	i = i + 1
end
puts
puts words.sort