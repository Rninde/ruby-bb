
def caesarCipher(string, shift)
	alphabet = "a b c d e f g h i j k l m n o p q r s t u v w x y z"
	lowerIndex = alphabet.split(" ")
	upperIndex = alphabet.upcase.split(" ")
	cipherText = string.split("")
	final = []
	cipherText.each do |letter|
		if lowerIndex.include?(letter)
		cipherPosition = cipherText.index(letter) 
		position = lowerIndex.index(letter)
		newPosition = position+shift
			if newPosition > 25
				newPosition -= 26
			end
		final.push(lowerIndex[newPosition])
		elsif upperIndex.include?(letter)
		cipherPosition = cipherText.index(letter) 
		position = upperIndex.index(letter)
		newPosition = position+shift
			if newPosition > 25
				newPosition -= 26
			end
		final.push(upperIndex[newPosition])

		else 
			final.push(letter)
		end
	end
	puts final.join
end
