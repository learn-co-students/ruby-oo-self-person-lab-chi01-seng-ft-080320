require 'pry'
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
      @name = name.freeze
      @bank_account  = 25
      @happiness = 8 
      @hygiene = 8  
    end

    def remember_name
        @name 
    end

    def limit
       @happiness.clamp(0..10)
    end
end