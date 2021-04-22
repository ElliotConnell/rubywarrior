
class Player

	def safe?(warrior)
		warrior.feel.empty?
	end

	MIN_HEALTH = 12

  def play_turn(warrior)

  	# if warrior.health <= MIN_HEALTH && (warrior.health >= @health)
  	# 	warrior.rest!

  	captives = 0

  	if captives == 0
  		if warrior.feel(:backward).empty?
  			warrior.walk!(:backward)
  		elsif warrior.feel(:backward).captive?
	  		warrior.rescue!(:backward)
	  		captives += 1 
	  	end
	

	  
  	elsif captives == 1
	  	if warrior.feel.empty? 
	  		warrior.walk!
	  	elsif  warrior.feel.captive?
	  		warrior.rescue! 		
	  	else
	  		warrior.attack!
	  	end

	  	@health = warrior.health

	  end
	  play_turn(warrior)
  end
end
