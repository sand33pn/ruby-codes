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

words.length.times do |j|
	words.length.times do |k|
		if words[j] < words[k]
			word = words[j]
			words[j] = words[k]
			words[k] = word
		end
	end
end

puts words