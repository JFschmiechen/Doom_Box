module Entity
  def initialize
    @attackSequence = [rand(4), rand(4), rand(4), rand(4), rand(4)]

    @strength = 5
    @intelligence = 5
    @dexterity = 5
    @constitution = 5
    @perception = 5
    @speed = 5

    @meleeAttack = @strength * 6
    @spellAttack = @intelligence * 6
    @weight = @strength * 20
    @critChance = (@perception * 0.6)
    @health = 100 + (@constitution * 7)
    @experience = 0
    @totalExperience = 200
    @playerLevel = 1
    @hitChance = (@dexterity / 2) + (@strength / 2) * 10

  end

  attr_reader :strength, :intelligence, :dexterity, :constitution, :perception, :Speed, :hitChance
  attr_reader :attackSequence, :meleeAttack, :spellAttack, :weight, :critChance, :health, :experience, :totalExperience, :playerLevel

  def setStrength=(modifier)
    @strength += modifier
  end

  def setIntelligence=(modifier)
    @intelligence += modifier
  end

  def setDexterity=(modifier)
    @dexterity += modifier
  end

  def setConstitution=(modifier)
    @constitution += modifier
  end

  def setPerception=(modifier)
    @perception += modifier
  end

  def setSpeed=(modifier)
    @speed += modifier
  end

  def setHealth=(modifier)
    @health += modifier
  end

  def setPlayerLevel=(modifier)
    @playerLevel += modifier
  end

  def setExperience=(modifier)
    @experience += modifier
  end

  def levelUp
    @PlayerLevel += 1
    if @experience >= @totalExperience
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
          @strength += 1
          puts strength
        when 2
          @intelligence += 1
          puts intelligence
        when 3
          @dexterity += 1
          puts dexterity
        when 4
          @constitution += 1
          puts constitution
        when 5
          @perception += 1
          puts perception
        when 6
          @speed += 1
          puts speed
      end
    else
       abort("You live another day")
    end
  end
end
