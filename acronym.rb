class Acronym
    def self.abbreviate(phrase)
      return phrase.sub("-"," ").split.join(" ").split(/ /).map{|word| word[0].upcase}.join
    end
  end