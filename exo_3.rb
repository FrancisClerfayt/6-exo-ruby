# Exercise 3: Write a method which will take 2 name and nickname parameters and which will display:
# `Hello surnom` if only the nickname is provided
# `Bonjour nom` if only the name is provided
# `Bonjour Nom` ** AND THAT ** only if both are provided

# function taking 2 parameters name and nickname
def bonjour surnom, nom
	# if we only have the nickname
	if surnom != '' && nom == ''
		# we return 1
		return 1
	# if we only have the name
	elsif nom != '' && surnom == ''
		# we return 2
		return 2
	# if we have both
	elsif surnom != '' && nom != ''
		# we return 3
		return 3
	# otherwise we return -1
	else
		return -1
	end
end

# we get the nickname
puts 'Entrez un surnom (Appuyer sur entrée pour passer)'
surnom = gets.chomp

# we get the name
puts 'Entrez un nom (Appuyer sur entrée pour passer)'
nom = gets.chomp

# we call the function that checks the parameters
result = bonjour(surnom ,nom)
# if 1 (only the nickname)
if result == 1
	puts "Hello #{surnom.downcase}"
# if 2 (only the name)
elsif result == 2
	puts "Bonjour #{nom.downcase}"
# if 3 (BOTH parameters)
elsif result == 3
	puts "Bonjour #{nom.capitalize}"
# if -1 (No parameters)
else
	puts "Entrez au moins un surnom ou un nom"
end