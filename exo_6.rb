# Exercise 6 - The number is correct
# As part of its activity, the credit company ** PAIETONPRET ** needs to check the SIRET number of the client companies of their solution.
# To do this, when a team member enters it, she needs to check that the member has entered the SIRET number correctly without entering a typing or audition error.
# For this we will use Luhn's algorithm.
# Your mission if you accept it (it's not a question) will be to create the code that will allow you to verify the SIRET number
# The code will simply have to return whether it is good or not.

# Step 1
# The algorithm doubles every second digit, starting with the second last and moving from right to left. If the double of a digit is greater than nine (for example 2 × 8 = 16), then it must be reduced to a digit between 1 and 9 by taking its remainder in the Euclidean division by 9. For this, there is has 2 ways to do this (for an identical result):
# Either we add the numbers making up the double. In the example of the number 8, 2 × 8 = 16, then we add the numbers 1 + 6 = 7.
# Either we subtract 9 from the double. With the same example, 16 - 9 = 7.

def stepOne number
	# We split the string into an array
	number = number.split('')
	# Each value is converted into integer
	number.map! {
		|nb| nb.to_i
	}
	# intermediary array
	new_number = []
	# iterator
	i = 0
	# we reverse the array and for each 
	number.reverse.each do |nb|
		if i % 2 != 0
			if (nb * 2) > 9
				# We put (nb * 2) - 9 ex : (8 * 2) - 9 = 16 - 9 = 7
				new_number << (nb * 2) - 9
			else
				# We put nb * 2 in the intermedairy array
				new_number << nb * 2
			end
			# increment iterator
			i += 1
		else
			# We put nb in the intermedairy array
			new_number << nb
			# increment iterator
			i += 1
		end
	end
	return new_number
end

# Step 2
# The sum of all the digits obtained is performed.
def stepTwo number
	sum = 0
	number.each do |nb|
		sum += nb
	end
	return sum
end

# Step 3
# The result is divided by 10. If the remainder of the division is zero, then the original number is valid.
def stepThree number
	if number % 10 == 0
		return 'Le numéro de SIRET est valide'
	else
		return 'Le numéro de SIRET n\'est pas valide'
	end
end

# We ask for the SIRET number
puts 'Veuillez entrer le numéro de SIRET'
siret = gets.chomp

puts stepThree(stepTwo(stepOne(siret)))