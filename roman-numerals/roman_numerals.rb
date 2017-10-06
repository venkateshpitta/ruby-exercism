module BookKeeping
  VERSION = 2
end

require 'roman-numeral'

class Fixnum
  def to_roman
    r = RomanNumeral.new(self)
    r.to_roman
  end
end
