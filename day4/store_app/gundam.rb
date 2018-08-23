require "./robot.rb"

module StoreFront
  class Gundam < Robot
    attr_reader :gundam, :series
    attr_writer :gundam, :series

    def initialize(input_options)
      super(input_options)
      @gundam = input_options[:gundam]
      @series = input_options[:series]
    end

    def gundam_info
      return "You bought a #{ height }m #{ weight }t #{ color } #{ gundam } from the series #{ series }"
    end
  end
end
