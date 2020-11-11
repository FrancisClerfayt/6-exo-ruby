# Exercice 2 : Table de multiplication.
# L'utilisateur renseigne un chiffre
# Le script affichera la table de multiplication

# On affiche une phrase pour demander le chiffre
puts 'Entrez un chiffre : '
# On récupère la chaine contenant le chiffre que l'on tranforme en entier
chiffre = gets.chomp.to_i
# On affiche une phrase
puts "La table de multiplication du chiffre #{chiffre} est : "
# On boucle de 1 à 10
for i in 1..10
	# A chaque boucle on affiche compteur * chiffre = resultat
	puts "#{i} * #{chiffre} = #{chiffre * i}"
end