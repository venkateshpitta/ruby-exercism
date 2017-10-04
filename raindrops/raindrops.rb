module BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert(number)
    (if number%3 == 0 then "Pling" else "" end) +
      (if number%5 == 0 then "Plang" else "" end) +
      (if number%7 == 0 then "Plong" else "" end) +
      (if number%3 != 0 and number%5 != 0 and number%7 != 0 then number.to_s else "" end)
  end
end
