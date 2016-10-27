require_relative "entity"
require_relative "MonsterFile"
require_relative "FightFunctions"

class Main < Entity
player = Human.new
monsterCentipede = Centipede.new
monsterCentipede.modifyAttribute(monsterCentipede)

  loop do

    puts "--ACTIONS-- \n"
    puts "1. Attack (#{player.hitChance}%)"
    puts "2. Use skill"
    puts "3. Monster information"

    playerChoice = gets.to_i

    case playerChoice
    when 1
      dealDamageTo(monsterCentipede, player)
    when 2
      break
    when 3
      puts "1. Player"
      puts "2. Monster"
        playerChoice = gets.to_i
      case playerChoice
      when 1
        infoCall(player)
      when 2
        infoCall(monsterCentipede)
      end

    break if monsterCentipede.health <= 0 || player.health <= 0
  end
end
  player.setExperience=(50)
  player.levelUp
end
