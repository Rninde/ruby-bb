
def substrings(string, dictionary)
	downstring = string.downcase
	stringarray = downstring.split(" ")
	total = Hash.new { |hash, key| hash[key] = 0}
	dictionary.each do |word|
		if stringarray.include?(word)
			total[word] += 1


		end
	end
	puts total
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)