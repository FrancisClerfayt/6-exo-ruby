# Exercise 5: The weight of words
# When entering a word or group of words separated by a space.
# The script should return the total weight of the word or group of words.
# The principle `a = 1`, `b = 2`,` c = 3` ... `z = 26`
# A space will count as `0`
# There is no difference between an "A" and an "a", they will both weigh 1
# The number will be reduced to a number of 1 digit
# Example `Z = 26 = 2 + 6 = 8`

# This function transform accentuated characters into their non accentuated version
def transformSpecials (string)
	result = string.tr('áàâäã','a')
	result = result.tr('ÃÄÂÀ', 'A')
	result = result.tr('éèêë', 'e')
	result = result.tr('ËÉÈÊ', 'E')
	result = result.tr('íìîï', 'i')
	result = result.tr('IÎÌ', 'I')
	result = result.tr('óòôöõ', 'o')
	result = result.tr('ÕÖÔÒ', 'O')
	result = result.tr('úùûü', 'u')
	result = result.tr('œ', 'oe')
	result = result.tr('ß', 'ss')
	result = result.tr('ç', 'c')
	result = result.tr('Ç', 'C')
	return result
end

# We create a String with all letters
alphabet = ' abcdefghijklmnopqrstuvwxyz';
weight = 0
# We get the input from user
input = gets.chomp
# We transform the accentuated characters into non accentuated ones
input = transformSpecials(input)
# We ask if Upper case letters are double weight or not
puts "Voulez-vous que les Masjuscules est le double du poids des minuscules. (taper oui ou non)"
prompt = gets.chomp.downcase
# if 'no'
if prompt == 'non'
	# We transform all letters to lower case
	input = input.downcase
	# for each letter
	input.split(//).each do |i|
		
		# we search the letter in the alphabet
		n = alphabet.index(i)
		# we transform it into a String then split it into an array then for each cell
		n.to_s.split(//).each do |j|
			
			# we add it to the overall weight
			weight += j.to_i
		end
	end
	# We display the result
	puts "Le poids est de : #{weight}"
# if 'yes'
elsif prompt == 'oui'
	# We create an uppercase letters string
	uppercase = ' ABCDEFGHIJKLMNOPQRSTUVWXYZ'
	# for each letters 
	input.split(//).each do |i|
		# We check if its in lower case alphabet
		n = alphabet.index(i)
		# if it is
		if n != nil
			# we transform it into a String then split it into an array then for each cell
			n.to_s.split(//).each do |j|
				# we add it to the overall weight
				weight += j.to_i
			end
		# if it is not in lower case alphabet
		else
			# We find its index and multiply it by 2
			n = uppercase.index(i) * 2
			# we transform it into a String then split it into an array then for each cell
			n.to_s.split(//).each do |j|
				# we add it to the overall weight
				weight += j.to_i
			end
		end
	end
	# We display the result
	puts "Le poids est de : #{weight}"
else
	puts 'Veuillez entrer oui ou non'
end