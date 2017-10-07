module BookKeeping; VERSION = 3; end;

class Year

  def self.leap?(n)
    (n%100!=0 and n%4==0) or n%400==0
  end
  
end
