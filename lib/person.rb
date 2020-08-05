class Person

    attr_reader :name, :happiness
    attr_accessor :bank_account

def initialize(name= name, happiness = 8)
    @name = name
    @bank_account = 25
    @happiness = happiness
end

def name 
    @name
end

def happiness=(value)
    if value > 10 
        @happiness = 10
    elsif value < 0 
        @happiness = 0
    else @happiness = happiness
    end
end


end#

Steven = Person.new