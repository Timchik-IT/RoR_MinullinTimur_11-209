load 'raspberry_bush.rb'

class Human
  attr_accessor :name
  
  def initialize(name, rb)
    @name = name
    @plant = rb
  end

  def work
    plant.grow_all()
  end

  def harvest
    if plant.ripe_all?()
      plant.give_away_all()
      puts("raspberry collected!")
      return 1
    else
      puts("its too early to collected!")
      return 0
    end
  end

  def self.knowledge_base
    puts("Hello user! To pick raspberries you need to hire a person and attach an existing bush to him. \nThe bush, like the individual raspberry, has stages of ripening. \nIn order for the raspberry to grow, you need to force the worker to work. Good luck!")
  end

  protected
  attr_accessor :plant
end