class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(n)
        @happiness = constrain(n, 0, 10)
    end

    def hygiene=(n)
        @hygiene = constrain(n, 0, 10)
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3 
        self.happiness += 3

        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        message = ""
        if (topic === "politics")
            message = "blah blah partisan blah lobbyist"
            self.happiness -= 2
            friend.happiness -= 2
        elsif (topic === "weather")
            message = "blah blah sun blah rain"
            self.happiness += 1
            friend.happiness += 1
        else
            message = "blah blah blah blah blah"
        end
        message
    end
end

def constrain(value, min, max)
    value = max if value >= max
    value = min if value <= min
    value
end