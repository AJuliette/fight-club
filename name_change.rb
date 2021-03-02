class NameChange
  def initialize(name:)
    @name = name
  end

  def none
    @name
  end

  def katana
    size = @name.size

    if size.odd?
      @name.chars.shift(size / 2).join + ' ' + @name.chars[(size / 2)] + ' ' + @name.chars.pop(size / 2).join
    else
      @name.chars.shift(size / 2).join + ' ' + @name.chars.pop(size / 2).join
    end
  end

  def gun
    size = @name.size
    name_raised = @name.chars.each_with_index.map do |c, i|
      if i == 0 || i == @name.size - 1
        c.capitalize
      else
        c
      end
    end.join

    name_raised
  end
end
