load 'raspberry.rb'

class RaspberryBush
    def initialize(count)
        id = 1
        @raspberries = []
        while id <= count do
            @raspberries << Raspberry.new(id)
            id += 1
        end
    end

    def grow_all
        @raspberries.each do |raspberry|
            raspberry.grow()
        end 
    end

    def ripe_all?
        count = 0
        @raspberries.each do |raspberry| 
            if raspberry.state == States::RED
                count += 1
            end
        end
        return count == @raspberries.count
    end

    def give_away_all
        @raspberries.each do |raspberry|
            raspberry.collect()
        end
    end

    protected

    attr_accessor :raspberries
end