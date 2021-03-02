class Attack
  def run(attacker: , assaulted:)
    weapons = attacker.weapons
    cries = weapons.each_with_object([]) do |weapon, arr|
      arr << Shout.new(name: assaulted.name).send(weapon)
    end

    name_changed = weapons.each_with_object([assaulted.name]) do |weapon, arr|
      name = arr.pop
      name = NameChange.new(name: name).send(weapon)
      arr << name
    end

    p (cries + name_changed).join(', ') + ' !'
  end
end
