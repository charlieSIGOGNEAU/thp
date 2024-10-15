class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize (name)
    super(name)
    @life_points = 100
    @weapon_level = 1
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
  end

  def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon
    arme_trouve = rand(1..6)
    puts "Tu as trouvé une arme de niveau #{arme_trouve}"
    if arme_trouve > @weapon_level
      puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
      @weapon_level = arme_trouve
    else
      puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
    end
  end

  def search_health_pack
    chance = rand(1..6)
    if chance == 1
      puts "Tu n'as rien trouvé... "
    elsif chance == 6
      puts "Waow, tu as trouvé un pack de +80 points de vie !"
      @life_points += 80
      @life_points = 100 if @life_points > 100
    else
      puts "Bravo, tu as trouvé un pack de +50 points de vie !"
      @life_points += 50
      @life_points = 100 if @life_points > 100
    end
  end

end






