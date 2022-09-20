# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_reader :happiness, :hygiene

    def happiness=(val)
        if val <= 10
            if val >= 0
                @happiness=val
            else
                @happiness=0
            end
        else
            @happiness=10
        end
    end

    def hygiene=(val)
        if val <= 10
            if val >= 0
                @hygiene=val
            else
                @hygiene=0
            end
        else
            @hygiene=10
        end
    end

    def happiness_nudge(val)
        self.happiness=(self.happiness+val)
    end
    def hygiene_nudge(val)
        self.hygiene=(self.hygiene+val)
    end

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def get_paid (amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        hygiene_nudge(4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        hygiene_nudge(-3)
        happiness_nudge(2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        if friend.class == Person
            friend.happiness_nudge(3)
            self.happiness_nudge(3)
            "Hi #{friend.name}! It's #{self.name}. How are you?"
        elsif friend.class == String && friend == "friend"
            self.happiness_nudge(3)
            "Hi friend! It's #{self.name}. How are you?"
        else
            return nil
        end
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            friend.happiness_nudge(-2)
            self.happiness_nudge(-2)
            "blah blah partisan blah lobbyist"
        when "weather"
            friend.happiness_nudge(1)
            self.happiness_nudge(1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end