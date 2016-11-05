require_relative "entity"

def fireBlast(receiver, dealer)
  spellName = "Fire Blast"
  if dealer.hitChance * 1.5 >= 1 + rand(100)
    if dealer.critChance >= 1 + rand(100)
  receiver.sethealth=((-dealer.spellAttack + 5) * 2)
    puts "#{dealer.name}s #{spellName} critical hits for #{((dealer.spellattack + 5) * 2)}!"

  else receiver.sethealth=(-dealer.spellAttack + 5)
  end
  else "#{dealer.name}s #{spellName} failed!"
end


   if ((dealer.intelligence * 3) >= 1 + rand(100))
     receiver.setBurning=(1)
   end
