require_relative "entity"



def dealDamageTo(receiver, dealer)
  if dealer.hitChance >= (1 + rand(100))
    if dealer.critChance >= (1 + rand(100))
      puts "CRITICAL with a #{dealer.hitChance - dealer.critChance}% chance to crit"
      receiver.setHealth=(-dealer.meleeAttack * 2)
      puts receiver.health

    else
      puts "STRIKE"
      receiver.setHealth=(-dealer.meleeAttack)
      puts receiver.health

    end
  else
    puts "MISS"
    puts receiver.health

  end
end

def infoCall(object)

  puts "---ATTRIBUTES---\n\n"
  puts "#{object.name}\n\n"
  puts "Strength: #{object.strength}"
  puts "Intelligence: #{object.intelligence}"
  puts "Dexterity: #{object.dexterity}"
  puts "Constitution: #{object.constitution}"
  puts "Perception: #{object.perception}"
  puts "Speed: #{object.speed}"
  puts "Size: #{object.size}\n"


end
