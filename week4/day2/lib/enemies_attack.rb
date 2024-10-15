def enemies_attack(game)
  puts "Les autres joueurs t'attaquent !"
  game.players.each {|enmie| enmie.attacks(game.human_player)}
  puts ""
end