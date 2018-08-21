
class Store
  def initialize(gundam, series, color, height, weight)
    @gundam = gundam
    @series = series
    @color = color
    @height = height
    @weight = weight
  end

  def gundam
    return @gundam
  end

  def gundam=(gundam)
    @gundam = gundam
  end

  def series
    return @series
  end

  def series=(series)
    @series = series
  end

  def height
    return height
  end

  def height=(height)
    @height = height
  end

  def weight
    return @weight
  end

  def weight=(weight)
    @weight = weight
  end

  def info
    return "You bought a #{ height }m #{ weight }t #{ color } #{ gundam } from the series #{ series }"
  end
end

item_1 = Store.new{:gundam => "Char's Sazabi", :series => "Gundam Wing", :color => "Red", :height => 25.6, :weight => 71.2}
# item_2 = {:gundam => "God Gundam", :series => "G Gundam", :color => "White", :height => 16.6, :weight => 20.6}
# item_3 = {gundam: "Unicorn", series: "Mobile Suit Gundam", color: "White", height: 21.7, weight: 42.7}
p item_1
p item_1.info