# your code goes here

class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def happiness=(happiness)
        if happiness < 0
            @happiness = 0
        elsif happiness > 10
            @happiness = 10
        else
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene < 0
            @hygiene = 0
        elsif hygiene > 10
            @hygiene = 10
        else
            @hygiene = hygiene
        end
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end
    
    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene += 4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(@hygiene -= 3)
        self.happiness=(@happiness += 2)
        return '♪ another one bites the dust ♫'
    end

    def call_friend(person)
        hold = person.happiness
        # hold is only necessary because the Test doesn't like the brevity of 2 calls to person's happiness in one line.
        self.happiness=(@happiness += 3)
        person.happiness=(hold += 3)

        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == 'politics'
            hold = person.happiness
            self.happiness=(@happiness -= 2)
            person.happiness=(hold -= 2)
            return 'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            hold = person.happiness
            self.happiness=(@happiness += 1)
            person.happiness=(hold += 1)
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end
end