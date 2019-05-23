class Card
    attr_accessor :rank, :suit

    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end
    
    def output_card
        puts "#{@rank} of #{@suit}"
    end
    
    def self.random_card
        Card.new(10, :spades)
    end
end

class Deck
    def initialize
        @cards = []
        for i in 1..13
            case i
            when 1
                @cards << Card.new(:ace, :spades)
                @cards << Card.new(:ace, :diamonds)
                @cards << Card.new(:ace, :hearts)
                @cards << Card.new(:ace, :clubs)
            when 2..10
                @cards << Card.new(i, :spades)
                @cards << Card.new(i, :diamonds)
                @cards << Card.new(i, :hearts)
                @cards << Card.new(i, :clubs)
            when 11
                @cards << Card.new(:jack, :spades)
                @cards << Card.new(:jack, :diamonds)
                @cards << Card.new(:jack, :hearts)
                @cards << Card.new(:jack, :clubs)
            when 12
                @cards << Card.new(:queen, :spades)
                @cards << Card.new(:queen, :diamonds)
                @cards << Card.new(:queen, :hearts)
                @cards << Card.new(:queen, :clubs)
            when 13
                @cards << Card.new(:king, :spades)
                @cards << Card.new(:king, :diamonds)
                @cards << Card.new(:king, :hearts)
                @cards << Card.new(:king, :clubs)
            end
        end 
    end
    
    def shuffle
        @cards.shuffle!
    end
    
    def output
        @cards.each do |card|
            card.output_card
        end
    end
    
    def deal
        (@cards.shift).output_card
    end
end

deck = Deck.new
deck.shuffle

deck.deal