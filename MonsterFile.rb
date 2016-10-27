require_relative "entity"

class Insect < Entity  # Mosquito, Centipede, Spider, Ant, Maggot, Beetle
  def modifyAttribute(object)
    object.setSize=(3)
    object.setHealth=(-50)
    object.setEarthResist=(25)
    object.setFireResist=(-50)
    object.setAirResist=(-25)
    object.setSpeed=(3)
    object.setDexterity=(2)
    object.setIntelligence=(-3)
    object.setPoisonResist=(50)
  end
end

class Human < Entity  # Sorcerer, Bandit, Human, Orc, Goblin
  def modifyAttribute(object)
    object.setIntelligence=(1)
    object.setSize=(5)
    object.setPerception=(-1)
    object.setConstitution=(1)
    object.setDexterity=(1)
    object.setPoisonResist=(-25)
  end
end

class Undead < Entity  # Ghoul, Skeleton, Lich, Mutapede, Sorcerer
  def modifyAttribute(object)
    object.setStrength=(1)
    object.setConstitution=(2)
    object.setfireResist=(-75)
    object.setPoisonResist=(200)
    object.setSpeed=(-2)
    object.setPerception=(-1)
  end
end

class Divine < Entity   # Angel, Demigod, Godkin
  def modifyAttribute(object)
    object.setStrength=(2)
    object.setIntelligence=(2)
    object.setNormalDmgResist=(50)
  end
end

class Beast < Entity   # Wolf, Rat, Dog, Troll, Lizard, Feline, Bird, Chicken
  def modifyAttribute(object)
    object.setStrength=(1)
    object.setIntelligence=(-7)
    object.setPerception=(2)
    object.setDexterity=(-1)
    object.setConstitution=(-1)
    object.setPosionResist=(25)
  end
end

class Mythical < Entity   # Dragonkin, Cockatrice, Giant, Fairy, Chimera, Gnome, Dwarf
end

class SuperNatural < Entity   # Spirit, Poltergeist
  def modifyAttribute(object)
    object.setNormalDmgResist=(100)
    object.setPerception=(3)
    object.setStrength=(-7)
    object.setAirResist=(-50)
  end
end

# Insect types

class Mosquito < Insect
  def modifyAttribute(object)
    setName=("Mosquito")
    setSpeed=(2)
    setConstitution=(-4)
    setFireResist=(-25)
    super(object)
  end
end

class GiantMosquito < Insect
  def modifyAttribute(object)
    setName=("Giant Mosquito")
    setStrength=(5)
    setSpeed=(3)
    setSize=(4)
    setFireResist=(-25)
    setPlayerLevel=(5 + (1 + rand(2)))
    super(object)
  end
end

class VileMosquito < Insect
  def modifyAttribute(object)
    setName=("Vile Mosquito")
    setStrength=(7)
    setSpeed=(7)
    setSize=(3)
    setFireResist=(-25)
    setPlayerLevel=(10 + (1 + rand(2)))
    super(object)
  end
end

class Centipede < Insect
  def modifyAttribute(object)
    object.setName=("Centipede")
    object.setDexterity=(7)
    super(object)
  end
end

class CellarSpider < Insect
  def modifyAttribute(object)
    setName=("Cellar Spider")
    setConstitution=(3)
    setStrength=(1)
    super(object)
  end
end

class WolfSpider < Insect
  def modifyAttribute(object)
    setName=("Wolf Spider")
    setConstitution=(5)
    setStrength=(3)
    setSize=(2)
    setPlayerLevel=(5 + (1 + rand(2)))
    super(object)
  end
end

class BlackRecluse < Insect
  def modifyAttribute(object)
    setName=("Black Recluse")
    setConstitution=(7)
    setStrength=(5)
    setSize=(4)
    setPlayerLevel=(10 + (1 + rand(2)))
    super(object)
  end
end

class Ant < Insect
  def modifyAttribute(object)
    setName=("Black Ant")
    setStrength=(2)
    setDexterity=(2)
    super(object)
  end
end

class FireAnt < Insect
  def modifyAttribute(object)
    setName=("Fire Ant")
    setStrength=(2)
    setDexterity=(2)
    setFireResist=(150)
    setPlayerLevel=(5 + (1 + rand(2)))
    super(object)
  end
end

class StinkBeetle < Insect
  def modifyAttribute(object)
    setName=("Stink Beetle")
    setArmor=(5)
    setStrength=(2)
    super(object)
  end
end

class StagBeetle < Insect
  def modifyAttribute(object)
    setName=("Stag Beetle")
    setArmor=(10)
    setStrength=(3)
    super(object)
  end
end

class RhinocerosBeetle < Insect
  def modifyAttribute(object)
    setName=("Rhinoceros Beetle")
    setArmor=(20)
    setStrength=(5)
    super(object)
  end
end

class Maggot < Insect
  def modifyAttribute(object)
    setName=("Maggot")
    setStrength=(-4)
    setIntelligence=(-7)
    setFireResist=(-100)
    super(object)
  end
end
