# function that fills an array of grades
def promptGrades()
	# we create an empty array
	grades = []
	# we prepare a variable to receive the inputs
	prompt = ''
	# we ask and explain the inputs
	puts 'Saisissez les notes (entrez STOP pour arrêter)'
	# as long as the entry is not 'STOP'
	while prompt != 'STOP'
		# we recover the input
		prompt = gets.chomp
		# we match the entry to a decimal number with 2 digits before the decimal point
		if !!(prompt.match(/[0-9]{2}(\.[0-9]*)?/))
			# if the entry is decimal
			if !!(prompt.match(/[0-9]{2}\.[0-9]*/))
				# we add to the array using to float
				grades.push(prompt.match(/[0-9]{2}\.[0-9]*/).to_s.to_f)
			else
				# otherwise we add using to integer
				grades.push(prompt.match(/[0-9]{2}/).to_s.to_i)
			end
		end
	end
	# we return the array
	return grades
end

# function which calculates the average of a table of grades in parameters
def average(grades)
	# we transform the array into the sum of its values
	sum = grades.reduce(&:+)
	# we return the sum divided by the number of grades
	return sum / grades.length
end

# we call the prompt function
grades = promptGrades()
# we print the number of grades
puts "il y a eu #{grades.length} notes saisies"
# we call the average function
result = average(grades)
# we print the result
puts "La moyenne est de #{result}/20"