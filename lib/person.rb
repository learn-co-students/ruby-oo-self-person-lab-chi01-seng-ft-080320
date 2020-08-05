# your code goes here
class Person

attr_reader :name, :hygiene
attr_accessor :bank_account, :happiness 

def initialize(name)
@name = name
@bank_account = 25
@happiness = 8
@hygiene = 8
end

# def happiness= (happiness)
# if happiness == (0..10)
# @happiness = happiness
# end 
# end

def hygiene= (hygiene)
if hygiene (0..10)
@hygiene = hygiene
end
end

end