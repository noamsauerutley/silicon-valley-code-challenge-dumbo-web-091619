
# - `VentureCapitalist#name`
# - returns a **string** that is the venture capitalist's name
# - `VentureCapitalist#total_worth`
# - returns a **number** that is the total worth of this investor (e.g., think of it as how much money they have)
# - `VentureCapitalist.all`
# - returns an array of all venture capitalists
# - `VentureCapitalist.tres_commas_club`
# - returns an array of all venture capitalists in the Trés Commas club (they have more then 1,000,000,000 `total_worth`)

class VentureCapitalist
    attr_reader :name, :total_worth

    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        all.select do |venture_capitalist|
            venture_capitalist.total_worth > 1000000000
        end
    end

 end
