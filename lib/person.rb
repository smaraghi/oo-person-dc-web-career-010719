# your code goes here
require 'pry'
class Person

attr_accessor :bank_account
attr_reader :happiness, :hygiene, :name

def initialize(name)

bank_account = 25
happiness = 8
hygiene = 8

@name = name
@bank_account = bank_account
@happiness = happiness
@hygiene = hygiene

end

def happiness= (happiness)
if happiness < 0
happiness = 0
elsif happiness > 10
happiness = 10
end
@happiness = happiness
end

def hygiene= (hygiene)
if hygiene < 0
hygiene = 0
elsif hygiene > 10
hygiene = 10
end
@hygiene = hygiene
end

def clean?()
if @hygiene > 7
return true
else
return false
end
end

def happy?()
if @happiness > 7
return true
else
return false
end
end

def get_paid(salary_amount)
self.bank_account += salary_amount
return "all about the benjamins"
end

def take_bath
self.hygiene = @hygiene + 4
return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
self.hygiene = @hygiene - 3
self.happiness = @happiness + 2
return "♪ another one bites the dust ♫"
end


def call_friend(person)
self.happiness +=  3
person.happiness +=  3
return "Hi #{person.name}! It's #{self.name}. How are you?"
end

def start_conversation(person,topic)

if topic == "politics"
self.happiness -=  2
person.happiness -=  2
return "blah blah partisan blah lobbyist"
elsif topic == "weather"
self.happiness +=  1
person.happiness +=  1
return "blah blah sun blah rain"
else
return "blah blah blah blah blah"
end
end
end

bob = Person.new("bob")
sarah = Person.new("sarah")

bob.hygiene = 5
bob.happiness = 5
#bob.get_paid(200)

puts bob.work_out
puts bob.hygiene
puts bob.happiness
#puts bob.call_friend(sarah)
#puts bob.call_friend("fred")
#puts bob.hygiene