require './province.rb'
#1 North America
#2 South America
#3 Europe
#4 Asia
#5 Africa
#6 Oceania

class Board
  attr_accessor :provinces
  def initialize()
    provinces = [
        ["Alaska", 11, [12,16,46]],
        ["Alberta", 12, [11,16,17,19]],
        ["Central America", 13, [14,19,24]],
        ["Eastern United States", 14, [13,17,18,19]],
        ["Greenland", 15, [16,17,18,32]],
        ["Northwest Territory", 16, [11,12,15,17]],
        ["Ontario", 17, [12,14,15,16,18,19]],
        ["Quebec", 18, [14,15,17]],
        ["Western United States", 19, [12,13,14,17]],
        ["Argentina", 21, [22,23]],
        ["Brazil", 22, [21,23,24,55]],
        ["Peru", 23, [21,22,24]],
        ["Venezuela", 24, [22,23,13]],
        ["Great Britain", 31, [32,33,34,37]],
        ["Iceland", 32, [31,35,15]],
        ["Northern Europe", 33, [31,34,35,36,37]],
        ["Scandinavia", 34, [31,32,33,36]],
        ["Southern Europe", 35, [33,36,37,53,55,47]],
        ["Ukraine", 36, [33,34,35,41,47,411]],
        ["Western Europe", 37, [31,33,35,55]],
        ["Afghanistan", 41, [42,43,47,411,36]],
        ["China", 42, [41,43,48,49,410]],
        ["India", 43, [41,42,47,49,]],
        ["Irkutsk", 44, [46,48,10,412]],
        ["Japan", 45, [46,48]],
        ["Kamchatka", 46, [44,45,48,412,11]],
        ["Middle East", 47, [41,43,36,52,53]],
        ["Mongolia", 48, [42,44,45,46,410]],
        ["Siam", 49, [42,43,62]],
        ["Siberia", 410, [44,48,411,412]],
        ["Ural", 411, [41,42,410,36]],
        ["Yakutsk", 412, [44,46,410]],
        ["Congo",51, [52,55,56]],
        ["East Africa",52, [51,53,54,55,47]],
        ["Egypt",53, [52,55,35,47]],
        ["Madagascar",54, [52,56]],
        ["North Africa",55, [51,52,53,22,35,37]],
        ["South Africa",56, [51,52,54]],
        ["Eastern Australia",61, [63,64]],
        ["Indonesia",62, [63,64,49]],
        ["New Guinea",63, [61,62,64]],
        ["Western Australia",64, [61,62,63]]
    ]
    @provinces = []
    provinces.each { |province|  
      @provinces.push(Province.new(province[0],province[1],province[2]))
    }
  end

  def province(province_name)
    provinces.select{|province| province.name == province_name}[0]
  end

  def province_id(province_id)
    provinces.select{|province| province.id == province_id}[0]
  end
end

board = Board.new
board.province("Great Britain").adjacent.each {|neighbor| puts board.province_id(neighbor).name}

puts board.province("Great Britain").adjacent
puts board.province_id(31).adjacent