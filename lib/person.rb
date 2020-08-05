require 'pry'
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
    end 

    def happiness=(index)
        @happiness = index
        if @happiness > 10
            @happiness == 10
        end 
    end 

end


x = Person.new("Jesus")

binding.pry 
0