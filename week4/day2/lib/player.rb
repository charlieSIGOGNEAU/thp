class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie"
  end
  
  def gets_damage (perte_pv)
    @life_points -= perte_pv
    puts "le joueur #{@name} a été tué" if @life_points <= 0
  end

  def attacks(player2)
    puts "le joueur #{@name} attaque le joueur #{player2.name}"
    dommage_inflige = compute_damage
    puts "il lui inflige #{dommage_inflige} points de dommages"
    player2.gets_damage(compute_damage)
  end

  def compute_damage
    return rand(1..6)
  end


end