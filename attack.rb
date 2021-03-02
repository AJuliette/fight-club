class Attack
  def run(attacker: , assaulted:)
    weapons = attacker.weapons
    cries = weapons.each_with_object([]) do |weapon, arr|
      arr << weapon.cry
    end

    name_changed = weapons.each_with_object([assaulted.name]) do |weapon, arr|
      name = arr.pop
      name = weapon.name_change(name: name)
      arr << name
    end

    p (cries + name_changed).join(', ') + ' !'
  end
end
 