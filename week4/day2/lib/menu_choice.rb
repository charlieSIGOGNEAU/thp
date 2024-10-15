def menu_choice(input,game)
  game.human_player.search_weapon if input == "a"
  game.human_player.search_health_pack if input == "s"
  if input.to_i.to_s==input && (0..(game.players.length-1)).include?(input.to_i)
    game.human_player.attacks(game.players[input.to_i]) 
    game.kill_player(game.players[input.to_i]) if game.players[input.to_i].life_points<=0
  else
    puts "T'es qu'une grosse merde, je t'avais laissé un choix simple. Prend ça dans ta gueule"
  end
end
