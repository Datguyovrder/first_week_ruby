class Robot
  attr_reader :height, :weight

end



class Gundam
  attr_reader :gundam, :series, :color, :height, :weight
  attr_writer :gundam, :color, :height, :weight

  def initialize(input_options)
    @gundam = input_options[:gundam]
    @series = input_options[:series]
    @color = input_options[:color]
    @height = input_options[:height]
    @weight = input_options[:weight]
  end

  def info
    return "You bought a #{ height }m #{ weight }t #{ color } #{ gundam } from the series #{ series }"
  end
end

item_1= Gundam.new(gundam: "Char's Sazabi", series: "Gundam Wing", color:"Red", height: 25.6, weight: 71.2)
item_2 = Gundam.new(gundam: "God Gundam", series: "G Gundam", color: "White", height: 16.6,weight: 20.6)
# item_3 = {gundam: "Unicorn", series: "Mobile Suit Gundam", color: "White", height: 21.7, weight: 42.7}
p item_1
p item_1.info
p item_2
p item_2.info