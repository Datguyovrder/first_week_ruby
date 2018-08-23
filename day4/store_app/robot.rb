module StoreFront
  class Robot
    attr_reader :height, :weight, :color
    attr_writer :height, :weight, :color

    def initialize(input_options)
      @height = input_options[:height]
      @weight = input_options[:weight]
      @color = input_options[:color]
    end
  end
end