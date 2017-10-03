module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(dna)
    table = {"G" => "C", "C" => "G", "T" => "A", "A" => "U"}
    rna = ""
    dna.split("").each do |n|
      rna += if table.keys.include? n then table[n] else "" end
    end
    if rna.length == dna.length then rna else "" end
  end
end
