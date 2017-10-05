module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(given)
    @limit = given
  end

  def primes
    nums = [nil, nil, *2..@limit]
    (2..@limit**0.5).each do |i|
      (i**2..@limit).step(i){|m| nums[m] = nil} if nums[i]      
    end
    nums.compact
  end
end
