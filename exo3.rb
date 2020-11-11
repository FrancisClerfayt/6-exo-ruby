# Exercice 3 : Ecrire une méthode qui prendra 2 paramètres nom et surnom et qui affichera :
# `Hello surnom` si seul le surnom est fourni
# `Bonjour nom` si seul le nom est fourni
# `Bonjour Nom` **ET QUE** si les 2 sont fournis

# fonction prennant 2 paramètres nom et surnom
def bonjour surnom, nom
	# si on a seulement le surnom
	if surnom != '' && nom == ''
		# on retourne 1
		return 1
	# si on a seulement le nom
	elsif nom != '' && surnom == ''
		#on retourne 2
		return 2
	# si on a les deux
	elsif surnom != '' && nom != ''
		# on retourne 3
		return 3
	# sinon on retourne -1
	else
		return -1
	end
end

# on récupère le surnom
puts 'Entrez un surnom (Appuyer sur entrée pour passer)'
surnom = gets.chomp

# on récupère le nom
puts 'Entrez un nom (Appuyer sur entrée pour passer)'
nom = gets.chomp

# on appel la fonction qui vérifie les paramètres
result = bonjour(surnom ,nom)
# si 1 (que le surnom)
if result == 1
	puts "Hello #{surnom.downcase}"
#si 2 (que le nom)
elsif result == 2
	puts "Bonjour #{nom.downcase}"
# si 3 (LES DEUX paramètres)
elsif result == 3
	puts "Bonjour #{nom.capitalize}"
# si -1 (Aucun paramètres)
else
	puts "Entrez au moins un surnom ou un nom"
end