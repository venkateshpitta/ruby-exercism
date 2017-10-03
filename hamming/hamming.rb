module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(dnaa, dnab)
    if dnaa.length != dnab.length
      raise ArgumentError, 'Strands of different lengths are not allowed.'
    end
    (if dnaa[0] == dnab[0] then 0 else 1 end) + (if dnaa.length > 0 then compute dnaa[1..dnaa.length], dnab[1..dnab.length] else 0 end)
  end
end
