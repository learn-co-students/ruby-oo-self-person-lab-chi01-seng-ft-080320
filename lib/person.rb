# your code goes here

require "pry"

class Person 

    attr_accessor :bank_account

    attr_reader :name, :hygiene, :happiness



    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 


    def happiness=(points)
        if(points >= 0 && points <= 10) 
            @happiness = points
        end
        if(points < 0 )
            @happiness = 0
        end
        if(points > 10)
            @happiness = 10
        end 
        @happiness
    end 


    def hygiene=(points)
        if(points >= 0 && points <= 10) 
            @hygiene = points
        end
        if(points < 0 )
            @hygiene = 0
        end
        if(points > 10)
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
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end 

    def work_out
        self.happiness +=2
        self.hygiene -= 3
        '♪ another one bites the dust ♫'
    end 

    def call_friend (friend)
        self.happiness +=3
        friend.happiness +=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 



end 

mary = Person.new("mary")
charlie = Person.new("charlie")



# binding.pry