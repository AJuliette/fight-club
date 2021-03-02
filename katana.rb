class Katana
  def self.name_change(name:)
    size = name.size

    if size.odd?
      name.chars.shift(size / 2).join + ' ' + name.chars[(size / 2)] + ' ' + name.chars.pop(size / 2).join
    else
      name.chars.shift(size / 2).join + ' ' + name.chars.pop(size / 2).join
    end
  end

  def self.cry
    "I'll chop you in two"
  end
end
