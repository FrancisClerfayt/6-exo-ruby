# Exercise 2: Multiplication table.
# The user enters a number
# The script will display the multiplication table


# We display a sentence to ask for the number
puts 'Entrez un chiffre : '
# We retrieve the string containing the number that we transform in integer
chiffre = gets.chomp.to_i
# We display an introduction sentence 
puts "La table de multiplication du chiffre #{chiffre} est : "
# We loop from 1 to 10
for i in 1..10
	# At each loop we display counter * figure = result
	puts "#{i} * #{chiffre} = #{chiffre * i}"
end