
# - `FundingRound#startup`
# - returns the startup object for that given funding round
# - Once a funding round is created, I should not be able to change the startup
# - `FundingRound#venture_capitalist`
# - returns the venture capitalist object for that given funding round
# - Once a funding round is created, I should not be able to change the venture capitalist
# - `FundingRound#type`
# - returns a **string** that is the type of funding round
# - Examples include: Angel, Pre-Seed, Seed, Series A, Series B, Series C, etc.
# - `FundingRound#investment`
# - returns a **number** that is the amount invested during this funding round
# - This should be a float that is not a negative number.
# - `FundingRound.all`
# - returns all of the funding rounds

class FundingRound

    attr_reader :startup, :venture_capitalist
    attr_accessor :type
    @@all = []

    def initialize(startup, venture_capitalist, type, investment)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type
        @investment = investment
        @@all << self
    end

    def self.all
        @@all
    end

    def investment=(investment)
        if investment.class == "float" && investment > 0
            @investment = investment
        else @investment = 0.0
        end
    end

    def investment
        @investment
    end

end
