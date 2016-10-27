

class Entity
  def initialize
    @name

    @strength = 5
    @intelligence = 5
    @dexterity = 5
    @constitution = 5
    @perception = 5
    @speed = 5
    @size = 0

    @group = Array.new
    @groupBonus
    @meleeAttack = @strength * 6
    @spellAttack = @intelligence * 6
    @weight = @strength * 20
    @critChance = (@perception * 0.6)
    @health = 100 + (@constitution * 7)
    @experience = 0
    @playerLevel = 1
    @totalExperience = (@playerLevel * 200)
    @hitChance = (@dexterity / 2) + (@perception / 2) * 10
    @initiative = (@speed * 4) + (@dexterity / 2)

    @fireResist = 0
    @waterResist = 0
    @airResist = 0
    @earthResist = 0
    @poisonResist = 0
    @normalWepResist = 0
    @dmgAbsorb = 0
    @armor = 0
    @webbed = 0
    @wet = 0
    @warm = 0
    @burning = 0
    @cold = 0
    @freezing = 0
  end

  attr_reader :size, :strength, :intelligence, :dexterity, :constitution, :perception, :speed, :hitChance
  attr_reader :meleeAttack, :spellAttack, :weight, :critChance, :health, :experience, :totalExperience, :playerLevel
  attr_reader :group, :groupBonus, :initiative, :fireResist, :waterResist, :airResist, :earthResist, :normalWepResist, :dmgAbsorb
  attr_reader :posionResist, :name, :armor, :webbed, :wet, :cold, :freezing, :warm, :burning

  def setWebbed=(modifier)
    @webbed += modifier
  end

  def setWet=(modifier)
    @wet += modifier
  end

  def setCold=(modifier)
    @cold += modifier
  end

  def setFreezing=(modifier)
    @freezing += modifier
  end

  def setWarm=(modifier)
    @warm += modifier
  end

  def setBurning=(modifier)
    @burning += modifier
  end

  def setArmor=(modifier)
    @armor += modifier
  end

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

  def setSize=(modifier)
    @size += modifier
  end

  def insertGroup=(modifier)
    @group.insert(0, modifier)
  end

  def setGroupBonus=(modifier)
    @groupBonus = @group.size * 5
  end

  def setInitiative=(modifier)
    @intiative += modifier
  end

  def setTotalExperience=(modifier)
    @totalExperience += modifier
  end

  def setFireResist=(modifier)
    @fireResist += modifier
  end

  def setWaterResist=(modifier)
    @waterResist += modifier
  end

  def setAirResist=(modifier)
    @airResist += modifier
  end

  def setEarthResist=(modifier)
    @earthResist += modifier
  end

  def setNormalDmgResist=(modifier)
    @normalWepResist += modifier
  end

  def setDmgAbsorb=(modifier)
    @dmgAbsorb += modifier
  end

  def setPoisonResist=(modifier)
    @poisonResist += modifier
  end

  def setName=(modifier)
    @name = modifier
  end

  def levelUp
    if @experience >= @totalExperience
      @PlayerLevel += 1
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
          puts "Your strength is now #{strength}"
        when 2
          @intelligence += 1
          puts "Your intelligence is now #{intelligence}"
        when 3
          @dexterity += 1
          puts "Your dexterity is now #{dexterity}"
        when 4
          @constitution += 1
          puts "Your constitution is now #{constitution}"
        when 5
          @perception += 1
          puts "Your perception is now #{perception}"
        when 6
          @speed += 1
          puts "Your speed is now #{speed}"
      end
    else
       puts "You live another day"
    end
  end
end
