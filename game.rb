require_relative 'attack'
require_relative 'fist'
require_relative 'gun'
require_relative 'katana'
require_relative 'warrior'
require 'pry'

warrior_one = Warrior.new(name: 'Sami', weapons: [Fist, Gun, Katana])
warrior_two =  Warrior.new(name: 'David')
Attack.new.run(attacker: warrior_one, assaulted: warrior_two)
