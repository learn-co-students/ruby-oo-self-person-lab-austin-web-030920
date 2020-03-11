# your code goes here
class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
    
  def happiness=(num)
    num = 10 if num > 10
    num = 0 if num < 0
    @happiness = num 
  end
  
  def hygiene=(num)
    num = 10 if num > 10
    num = 0 if num < 0
    @hygiene = num
  end
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    def clean?
      @hygiene > 7
    end
  
    def happy?
      @happiness > 7
  end
      
  def bank_account=(bank_account)
    @bank_account = bank_account
  end
  
  def get_paid(salary)
    @bank_account += salary
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
  
  def call_friend(friend = "friend")
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics" 
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end

end