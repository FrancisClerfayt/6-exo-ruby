# Exercice 1 : Palindrome.
# Script permettant la saisie d'un mot et qui vérifie si celui-ci est un palindrome.
# La sortie sera : "Le mot 'saisie' est un palindrome" OU "Le mot 'saisie' n'est pas un palindrome"

# On affiche une phrase pour demander le mot
puts 'Entrez le mot à vérifier : '
# on récupère le mot et on enlève le saut de ligne
mot = gets.chomp
# on inverse le mot
reverse = mot.reverse
# si le mot et son inverse sont égaux 
if mot == reverse
	# On affiche que le mot est un palindrome
	puts "Le mot #{mot} est un palindrome"
else
	# Sinon on affiche que ce n'est pas un palindrome
	puts "Le mot #{mot} n'est pas un palindrome"
end
