require 'pry'


class Person
    attr_reader :name
    attr_accessor :bank_account, :hygiene
    attr_writer :happiness, :hygiene
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    def happiness
        @happiness.clamp(0, 10)
    end 

    def hygiene
        @hygiene.clamp(0, 10)
    end 

    def happy?
        happiness > 7 
    end 

    def clean?
        hygiene > 7
    end 

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end 

    def call_friend(friend_name)
        self.happiness += 3
        friend_name.happiness += 3 
        return "Hi #{friend_name.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        else if topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end 
    end 
end 
end 