class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8 
    end

    def happiness=(num)
        @happiness = num
        @happiness = 10 if @happiness > 10 
        @happiness = 0 if @happiness < 0 
    end 

    def hygiene=(num)
        @hygiene = num 
        @hygiene = 10 if @hygiene > 10 
        @hygiene = 0 if @hygiene < 0 
    end 

    def happy?
        happiness > 7 
    end 

    def clean?
        hygiene > 7
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
        self.happiness += 3 
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person, topic)
      convo = [self, person]  
      if topic == 'politics'
        convo.each { |h| h.happiness -= 2}
        first = "partisan"
        second = "lobbyist"
      elsif topic == 'weather'
        convo.each { |h| h.happiness += 1}
        first = 'sun'
        second = 'rain'
      end 
      first ||= 'blah'
      second ||= 'blah'
      quote = "blah blah #{first} blah #{second}"
    end 
end 