module BookKeeping
  VERSION = 4
end
class Squares
  def initialize(given)
    @number = given
  end
  def square_of_sum
    ((@number * (@number + 1) / 2) ** 2)
  end
  def sum_of_squares
    @number * (@number + 1) * (2 * @number + 1) / 6
  end
  def difference
    self.square_of_sum - self.sum_of_squares
  end
end
