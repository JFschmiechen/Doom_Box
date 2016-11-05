

class Entity

  attr_reader :size, :strength, :intelligence, :constitution, :speed, :dmgAbsorb, :dexterity, :perception, :hitChance
  attr_reader :meleeAttack, :spellAttack, :weight, :critChance, :health, :experience, :totalExperience, :playerLevel
  attr_reader :group, :groupBonus, :initiative, :fireResist, :waterResist, :airResist, :earthResist, :normalWepResist
  attr_reader :posionResist, :name, :armor, :webbed, :wet, :cold, :freezing, :warm, :burning, :spellHitChance, :teamMem, :monster

  def initialize
    @strength = 5
    @intelligence = 5
    @dexterity = 5
    @constitution = 5
    @perception = 5
    @speed = 5
    @size = 0

    @behavior

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

    @name = ""
    @meleeAttack = 0
    @spellAttack = 0
    @weight = 0
    @critChance = 0
    @health = 0
    @experience = 0
    @playerLevel = 0
    @totalExperience = 0
    @hitChance = 0
    @spellHitChance = 0
    @initiative = 0
    @teamMem = "FALSE"
    @monster = "FALSE"
  end

  def modifyAttribute(object)
    @name
    @group = Array.new
    @groupBonus
    @meleeAttack = object.strength * 6
    @spellAttack = object.intelligence * 6
    @weight = object.strength * 20
    @critChance = (object.perception * 2)
    @health = 100 + (object.constitution * 7)
    @experience = 0
    @playerLevel = 1
    @totalExperience = (object.playerLevel * 200)
    @hitChance = (((object.dexterity / 2) + (object.perception / 2)) * 10)
    @spellHitChance = (object.intelligence / 2) + (object.perception / 2) * 10
    @initiative = (object.speed * 4) + (object.dexterity / 2)
  end
end

public

  def setMonster=(modifier)
    @monster = modifier
  end

  def setTeamMem=(modifier)
    @teamMem = modifier
  end

  def setHitChance=(modifier)
    @hitChance += modifier
  end

  def setSpellHitChance=(modifier)
    @spellHitChance += modifier
  end

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
