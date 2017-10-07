module BookKeeping; VERSION = 1; end;

class Prime

  @primes = [2]

  def self.is_prime? (n)
    @primes.all? {|i| n%i != 0}
  end

  def self.get_more_primes
    a = @primes[-1]
    @primes.push([*a..a*2].select {|i| i.odd? and is_prime? i})
    @primes = @primes.flatten
  end

  def self.nth(n)
    fail ArgumentError, "No one knows to calculate #{n}th prime yet.  Let us start at 1 or higher." if n < 1
    while @primes.length <= n do
      get_more_primes
    end
    @primes[n-1]
  end

end
