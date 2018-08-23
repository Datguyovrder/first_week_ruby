require "./gundam.rb"

item_1= StoreFront::Gundam.new(gundam: "Char's Sazabi", series: "Gundam Wing", color:"Red", height: 25.6, weight: 71.2)
item_2 = StoreFront::Gundam.new(gundam: "God Gundam", series: "G Gundam", color: "White", height: 16.6,weight: 20.6)
# item_3 = {gundam: "Unicorn", series: "Mobile Suit Gundam", color: "White", height: 21.7, weight: 42.7}
p item_1
p item_1.gundam_info
p item_2
p item_2.gundam_info