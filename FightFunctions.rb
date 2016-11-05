require_relative "entity"


def dealDamageTo(receiver, dealer)
  if dealer.hitChance >= (1 + rand(100))
    if dealer.critChance >= (1 + rand(100))
      puts "CRITICAL with a #{dealer.critChance}% chance to crit"
      receiver.setHealth=(-dealer.meleeAttack * 2)
      puts "#{dealer.name}s CRITICAL hits for #{dealer.meleeAttack * 2}!"
      puts "#{receiver.name}s health is now #{receiver.health}!"

    else
      puts "STRIKE"
      receiver.setHealth=(-dealer.meleeAttack)
      puts "#{dealer.name}s STRIKE hits for #{dealer.meleeAttack}!"
      puts "#{receiver.name}s health is now #{receiver.health}!"

    end
  else
    puts "MISS"
    puts receiver.health

  end
end

def infoCall(object)

  puts "---ATTRIBUTES---\n\n"
  puts "   #{object.name}\n\n"
  puts "Health: #{object.health}"
  puts "Strength: #{object.strength}"
  puts "Intelligence: #{object.intelligence}"
  puts "Dexterity: #{object.dexterity}"
  puts "Constitution: #{object.constitution}"
  puts "Perception: #{object.perception}"
  puts "Speed: #{object.speed}"
  puts "Hit chance: #{object.hitChance}"
  puts "Size: #{object.size}\n\n"


end

def levelUp(object)
    object.playerLevel += 1
    puts "You have leveled up! Choose one attribute to increase."

      puts "1.  Strength"
      puts "2.  Intelligence"
      puts "3.  Dexterity"
      puts "4.  Constitution"
      puts "5.  Perception"
      puts "6.  Speed"

      chosenAttribute = gets.to_i

    case chosenAttribute
      when 1
          object.strength += 1
        puts "Your strength is now #{object.strength}"
      when 2
        object.intelligence += 1
        puts "Your intelligence is now #{object.intelligence}"
      when 3
          object.dexterity += 1
        puts "Your dexterity is now #{object.dexterity}"
      when 4
          object.constitution += 1
        puts "Your constitution is now #{object.constitution}"
      when 5
          object.perception += 1
        puts "Your perception is now #{object.perception}"
      when 6
          object.speed += 1
        puts "Your speed is now #{object.speed}"
    end
end


def sort(objectArray) # Selection sort by object's initiative
  n = objectArray.size - 1 # Objects with higher initiative are more likely to go first.

  n.times do |i|
    indexSmallest = i

    (i + 1).upto(n) do |j|
      indexSmallest = j if objectArray[j].initiative > objectArray[indexSmallest].initiative
    end

    objectArray[i], objectArray[indexSmallest] = objectArray[indexSmallest], objectArray[i] if indexSmallest != i
  end
end

def turnManager(monster, team)
  mergedArray = monster + team
  sort(mergedArray)
  n = mergedArray.size
  teamSize = team.size
  monsterSize = monster.size
  i = 0
  j = 0
while 1

      (i + 1).upto(n) do |i|
        if i >= mergedArray.size
          i = 0
        end

        puts "\n#{mergedArray[i].name}'s turn!"

        if mergedArray[i] == team[0]
          puts "myturn"
          if team[0].health > 0

            puts "--ACTIONS-- \n"
            puts "1. Attack (#{team[0].hitChance}%)"
            puts "2. Use skill"
            puts "3. Monster information"

            playerChoice = gets.to_i

            case playerChoice
              when 1
                puts "Attack: \n"

                  n.times do |i|
                    puts "#{i}. #{mergedArray[i].name}"
                  end

                  playerChoice = gets.to_i
                  dealDamageTo(mergedArray[playerChoice], team[0])
                  puts "After hit"
              when 2
                break
              when 3
                puts "Who?"

                  n.times do |j|
                    puts "#{j}. #{mergedArray[j].name}"
                  end

                  playerChoice = gets.to_i
                  infoCall(mergedArray[playerChoice])
                  redo
            end
          end
          team[0].setExperience=(50)
          if team[0].experience >= team[0].totalExperience
            levelUp(team[0])
          end
        end

    if mergedArray[i].teamMem == "TRUE"
      if mergedArray[i].health > 0

        puts "--ACTIONS-- \n"
        puts "1. Attack (#{mergedArray[i].hitChance}%)"
        puts "2. Use skill"
        puts "3. Monster information"

        playerChoice = gets.to_i

      case playerChoice
        when 1
          puts "Attack: \n"

            n.times do |j|
              puts "#{j}. #{mergedArray[j].name}"
            end

            playerChoice = gets.to_i
            dealDamageTo(mergedArray[playerChoice], mergedArray[i])
        when 2
          break
        when 3
          puts "Who?"

            n.times do |i|
              puts "#{i}. #{mergedArray[i]}"
            end

            playerChoice = gets.to_i
            infoCall(mergedArray[playerChoice])

        end
      end
      mergedArray[i].setExperience=(50)
      if mergedArray[i].experience >= mergedArray[i].totalExperience
        levelUp(mergedArray[i])
      end

      else
        if mergedArray[i].teamMem != "TRUE" && mergedArray[i].monster == "TRUE"
          if mergedArray[i].health > 0
            dealDamageTo(team[rand(teamSize)], mergedArray[i])
          else
            next
          end
        end
      end
    end
  end
end
