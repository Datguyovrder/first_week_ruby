class Vehicle
    attr_reader :speed, :direction
    attr_writer :speed, :direction

    def initialize(input_options)
      @speed = input_options[:speed]
      @direction = input_options[:direction]
    end

    def brake
    @speed = 0
    end

    def accelerate
      @speed += 10
    end
end

class Car < Vehicle
  def initialize(input_options)
    super(input_options)
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize(input_options)
    super(input_options)
    @type = input_options[:type]
    @weight = input_options[:weight]    
  end  

  def ring_bell
    puts "Ring ring!"
  end

end

car = Car.new(
              speed: 80,
              direction: 'south',
              fuel: 'premium',
              make: 'lexus',
              model: 'GS400'
             )

bike = Bike.new(
                speed: 40, 
                direction: 'west',
                type: 'bmx',
                weight: 26
               )

car.honk_horn
bike.ring_bell


