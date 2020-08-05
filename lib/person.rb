# your code goes here
class Person

attr_reader :name
attr_writer :happiness, :hygiene 
attr_accessor :bank_account 

def initialize(name)
@name = name
@bank_account = 25
@happiness = 8
@hygiene = 8
end

def happiness
    @happiness.clamp(0,10)
end 

def hygiene
    @hygiene.clamp(0,10)
end

def happy?
    if @happiness > 7
        true
    else
        false
    end 
end 

def clean?
    if @hygiene > 7
        true
    else
        false
    end
end  

def get_paid(salary)
    @bank_account += salary
    p "all about the benjamins"
end

def take_bath(hygiene_points = 4)
    self.hygiene += hygiene_points
    p "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out(happiness_points=2, hygiene_points=3)
    self.happiness += happiness_points
    self.hygiene -= hygiene_points
    p "♪ another one bites the dust ♫"
end
end