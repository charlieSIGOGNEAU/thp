require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/human_player'


puts "|-----------------------------------------------|"
puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts "|Le but du jeu est d'être le dernier survivant !|"
puts "|-----------------------------------------------|"
puts "\n         quel est ton prénom ?"

human_player=HumanPlayer.new(gets.chomp)
player1 = Player.new("Josiane")
player2 = Player.new("José")
enmies=[player1,player2]

while human_player.life_points > 0 && (player1.life_points >0 || player2.life_points > 0)
  human_player.show_state
  puts "Quelle action veux-tu effectuer ?\na - chercher une meilleure arme\ns - chercher à se soigner\nattaquer un joueur en vu :"
  print "0 - "
  player1.show_state
  print "1 - "
  player2.show_state
  saisie=gets.chomp
  human_player.search_weapon if saisie == "a"
  human_player.search_health_pack if saisie == "s"
  human_player.attacks(player1) if saisie == "0"
  human_player.attacks(player2) if saisie == "1"
  puts "Les autres joueurs t'attaquent !"
  enmies.each {|enmie| enmie.attacks(human_player) if enmie.life_points>0}
  puts ""

end

puts "La partie est finie"
puts human_player.life_points > 0 ? "BRAVO ! TU AS GAGNE !" : "Loser ! Tu as perdu !"




