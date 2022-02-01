require 'pry'

class Player
  attr_accessor :name, :life_points
  
  def initialize(name_player)
    @name = name_player
    @life_points = 10
  end
  
  def show_state()
    puts "#{@name} a #{@life_points} points de vie"
  end

  def gets_damage(damage)
    @life_points -= damage
    
    if @life_points <= 0 
      puts "#{@name} a été tué !" 
    end
  end

  def attacks(player_attacked)
    
    puts "#{@name} attaque le joueur #{player_attacked.name}"
    damage = compute_damage
    puts "il lui inflige #{damage} points de dommage"
    player_attacked.gets_damage(damage)
  
    if player_attacked.life_points >= 0
      puts "Il reste #{player_attacked.life_points} point de vie à #{player_attacked.name}"
    end
  end

  def compute_damage
    rand(1..6)
  end


  
 
end
