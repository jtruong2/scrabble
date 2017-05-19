require 'pry'
class Scrabble
  attr_reader :values

  def initialize
    @values = {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end


  def score(word)
    list_of_values = []
    if word == '' || word == nil
      list_of_values << 0
    else
      list_of_letters = word.upcase.chars
      list_of_letters.each do |x|
        list_of_values << @values[x]
      end
    end
    list_of_values.reduce(:+)
  end

end
