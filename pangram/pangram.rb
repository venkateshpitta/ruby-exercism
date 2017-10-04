module BookKeeping
  VERSION = 5
end

require 'set'

class Pangram
  def self.pangram?(given)
    Set.new(given.gsub(/\p{^Alpha}/, '').downcase.split("")).length == 26
  end
end
