module States
    NONE = 0
    BLOOM = 1
    GREEN = 2
    RED = 3
end  


class Raspberry

    attr_reader :index, :state

    def initialize(id)
        @index = id
        @state = States::BLOOM
    end

    def grow
        if @state < 3
            @state += 1    
        end
    end

    def ripe?
        @state == States::RED
    end

    def collect
        if @state = States::RED 
            @state = States::NONE
        end
    end
end