def endd(game)
  puts "La partie est finie"
  puts game.human_player.life_points > 0 ? "BRAVO ! TU AS GAGNE !" : "Loser ! Tu as perdu !"
end