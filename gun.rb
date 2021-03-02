class Gun
  def self.name_change(name:)
    size = name.size
    name_raised = name.chars.each_with_index.map do |c, i|
      if i == 0 || i == name.size - 1
        c.capitalize
      else
        c
      end
    end.join

    name_raised
  end

  def self.cry
    "Raise your hand"
  end
end
