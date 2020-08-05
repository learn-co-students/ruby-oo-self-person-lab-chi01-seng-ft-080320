require 'pry'

class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name = name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name 
        @name
    end

    def happiness=(value)
        if value > 10 
            @happiness = 10
        elsif value < 0 
            @happiness = 0
        else 
            @happiness = happiness
        end
    end

    def hygiene=(value)
        if value > 10 
            @hygiene = 10
        elsif value < 0 
            @hygiene = 0
        else 
            @hygiene = hygiene
        end
    end

    def happy?
        happiness > 7
    end   

end

Steven = Person.new
Steven.happy?