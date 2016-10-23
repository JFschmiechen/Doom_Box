require_relative "entity"


class Fight
  include Entity
end

monster = Fight.new
player = Fight.new


loop do
  loop do

    puts "--ACTIONS-- \n"
    puts "1. Attack (#{player.hitChance}%)"


    playerChoice = gets.to_i
    case playerChoice
    when 1
      if player.hitChance >= 1 + rand(100)
        if player.critChance >= 1 + rand(100)

          puts "CRITICAL with a #{player.hitChance - player.critChance}% chance to crit"
          monster.setHealth=(-player.meleeAttack * 2)
          puts monster.health

        else

          puts "STRIKE with a #{player.hitChance}% chance to hit"
          monster.setHealth=(-player.meleeAttack)
          puts monster.health

        end
      else

        puts "MISS"
        puts monster.health

      end
    end

    break if monster.health <= 0 || player.health <= 0
  end
  player.setExperience=(50)
  player.levelUp
break if gets.to_i == 111
end
