# Exercise 1: Palindrome.
# Script allowing the entry of a word and which checks if it is a palindrome.
# Output : "Le mot 'saisie' est un palindrome" OR "Le mot 'saisie' n'est pas un palindrome"

# We display a sentence to ask for the word
puts 'Entrez le mot à vérifier : '
# we retrieve the word and remove the line break and transform it to lower case
mot = gets.chomp.downcase
# we reverse the word
reverse = mot.reverse
# if the word and its reverse are equal
if mot == reverse
	# We display that the word is a palindrome
	puts "Le mot #{mot} est un palindrome"
else
	# Otherwise We display that the word is not a palindrome
	puts "Le mot #{mot} n'est pas un palindrome"
end
