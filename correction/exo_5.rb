# ## Exo 5 Le poids des mots

# À la saisie d’un mot ou d’un groupe de mot séparé par un espace.

# Le script devra retourner le poids total du mot ou groupe de mot.

# Le principe `a = 1` , `b = 2`, `c = 3` … `z = 26`

# Un espace comptera pour `0`

# Il n’y a pas de différence entre un « A » et un « a » , ils feront tous les 2 un poids de 1

# Le nombre sera ramené à un nombre de 1 chiffre
# Exemple `Z = 26 = 2+6 = 8`
# **Z vaut d’office 8**
# Quelques soit les lettres autour.

# Example complet :
# > d a v i d  =
# > 4_1_22_9_4 =
# > 4 + 1 + (2+2) + 9 + 4 =
# > 4 + 1 + 4 + 9 + 4 =
# > 22
# > 4
#
# > D A V I D =
# > 8_2_44_18_8 =
# > 8 + 2 + (4+4) + (1+8) + 8 =
# > 8 + 2 + 8 + 9 + 8 =
# > 35
# > 7


# **Pour les plus chauds** :
# On pourra imaginer de faire un poids de la lettre * 2 si c’est une lettre majuscule.
# (A =1, A= 2….  b=2 B=4)

# **Attention** cette modification devra permettre d’utiliser l’une ou l’autre façon de compter.
# on va déjà préparer le poids de chaque lettre
# a b c d e f g h i j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z
# 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
# 1 2 3 4 5 6 7 8 9 1  2  3  4  5  6  7  8  9  2  2  3  4  5  6  7  8
# abcdefghijklmnopqrstuvwxyz
# 12345678912345678922345678

# une fois, ce travail effectué, il va falloir récupérer la saisie d'un mot
puts 'saisir un mot'
word = gets.chomp.downcase

weight = word.tr('abcdefghijklmnopqrstuvwxyz', '12345678912345678912345678')

# on va forcement récupurer un nombre du genre '41294'
# qu'il va falloir additionner, (comme dans l'exercice 4)
# dans notre cas on obient '20'
# il faudra donc faire 2 + 0 pour obtenir un nombre de 1 chiffre

# pour cela utiliser une boucle peu devenir interressant

def split_and_sum number
  return number if number.to_s.split('').size.eql? 1
  # on a un nombre à spliter et à additionner
  split_and_sum number.to_s.split('').map(&:to_i).reduce(:+)
end

sum = split_and_sum weight
puts "Le poids du mot est de #{sum}"