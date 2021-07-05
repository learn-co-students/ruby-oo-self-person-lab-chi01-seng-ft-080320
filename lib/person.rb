# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  def self.name
    @name = name
  end
  
  def happiness= (value)
    if(value >= 0 && value <= 10) 
        @happiness = value
    elsif(value < 0 )
        @happiness = 0
    else (value > 10)
        @happiness = 10
      end 
        @happiness
    end
    
    def hygiene= (value)
    if(value >= 0 && value <= 10) 
        @hygiene = value
    elsif(value < 0 )
        @hygiene = 0
    else (value > 10)
        @hygiene = 10
      end 
        @hygiene
    end 
    
    def happy?
      @happiness > 7
      end
      
    def clean?
      @hygiene > 7
      end
      
    def get_paid (salary)
      @bank_account += salary
      p "all about the benjamins"
      end
    
    def take_bath
      self.hygiene += 4
      p "♪ Rub-a-dub just relaxing in the tub ♫"
      end
      
    def work_out
      self.hygiene -= 3
      self.happiness += 2
      p "♪ another one bites the dust ♫"
    end
    
    def call_friend (person)
      self.happiness += 3
      person.happiness += 3
      p "Hi #{person.name}! It's #{self.name}. How are you?"
    end
    
    def start_conversation(person, topic)
        if (topic == "politics")
            self.happiness -= 2
            person.happiness -= 2
            p "blah blah partisan blah lobbyist"
        elsif (topic == "weather")
            self.happiness += 1  
            person.happiness += 1 
            p "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
      end
    end
end