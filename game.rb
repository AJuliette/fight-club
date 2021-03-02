require_relative 'attack'
require_relative 'cry'
require_relative 'name_change'
require_relative 'warrior'

warrior_one = Warrior.new(name: 'Sami', weapons: ['none', 'gun', 'katana'])
warrior_two =  Warrior.new(name: 'David')
Attack.new.run(attacker: warrior_one, assaulted: warrior_two)
