module ReverseName
    def funnyName
        @name.downncase.reverse.capitialize
    end
end

class User
    include ReverseName

    attr_reader :name

    def initialize(name, birth_year)
        @name = name
        @birth_year = birth_year
    end
end

me = User.initialize("Timur", 2004)
puts me.name
puts me.funnyName