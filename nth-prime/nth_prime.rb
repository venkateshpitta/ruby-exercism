module BookKeeping; VERSION = 1; end;

class Prime
  def self.is_prime? (knowns, n)
    knowns.all? {|i| n%i != 0}
  end

  def self.get_more_primes(knowns)
    a = knowns[-1]
    knowns.push([*a..a**2].select {|i| i.odd? and is_prime? knowns, i})
    knowns.flatten
  end

  def self.nth(n)
    if n < 1 then raise ArgumentError, "Cannot be smaller than 1" end
    primes = [2]
    while primes.length <= n do
      primes = get_more_primes(primes)
    end
    primes[n-1]
  end
end
