require_relative "entity"
require_relative "MonsterFile"
require_relative "FightFunctions"

class Main < Entity

player = Player.new
player.modifyAttribute(player)
abil = Abil.new
abil.modifyAttribute(abil)

monsterCentipede = Centipede.new
monsterCentipede.modifyAttribute(monsterCentipede)
monsterMosquito = Mosquito.new
monsterMosquito.modifyAttribute(monsterMosquito)


monsters = [monsterMosquito, monsterCentipede]
team = [player, abil]

turnManager(monsters, team) # In FightFunctions
end
