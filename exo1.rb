# Exercice 1 : Palindrome.
# Script permettant la saisie d'un mot et qui vérifie si celui-ci est un palindrome.
# La sortie sera : "Le mot 'saisie' est un palindrome" OU "Le mot 'saisie' n'est pas un palindrome"

puts 'Entrez le mot à vérifier : '
mot = gets.chomp
reverse = mot.reverse
if mot == reverse
	puts "Le mot #{mot} est un palindrome"
else
	puts "Le mot #{mot} n'est pas un palindrome"
end
