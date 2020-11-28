class Cards
    attr_accessor :number, :color
    def initialize(number, color)
        @number = number
        @color = color
    end
end

deck = []
 5.times do
    deck << Cards.new(Random.rand(1..13), ['C', 'D', 'E', 'T'].sample)
 end

puts deck