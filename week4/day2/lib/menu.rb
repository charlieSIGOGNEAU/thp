def menu
  puts "|-----------------------------------------------|"
  puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
  puts "|Le but du jeu est d'être le dernier survivant !|"
  puts "|-----------------------------------------------|"
  puts "\n         quel est ton prénom ?"

  game=Game.new(gets.chomp)

  
  while game.is_still_ongoing?
    game.human_player.show_state
    puts "Quelle action veux-tu effectuer ?\na - chercher une meilleure arme\ns - chercher à se soigner\nattaquer un joueur en vu :"
    game.players.each_with_index do |player,index|
      print "#{index} - "
      player.show_state
    end
    menu_choice(gets.chomp,game)
    enemies_attack(game)
  end
  endd(game)
end









