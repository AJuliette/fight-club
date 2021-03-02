class Warrior
  attr_reader :name, :weapons

  def initialize(name: 'Sami', weapons: ['none'])
    @name = name
    @weapons = weapons
  end
end
