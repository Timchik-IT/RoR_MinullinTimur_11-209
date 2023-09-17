load 'Human.rb'

if __FILE__ == 'extra_point.rb'
  puts("Hello, there's a new game about picking raspberries. To begin, choose a name for your character:")
  name = gets.chomp.to_s
  
  count_of_coolleccted_raspberries = 0 
  puts("Hi, " + name + ", Now you don’t have a raspberry bush or a raspberry itself.")

  puts("choose the count of raspberries on the bush:")
  count_of_raspberries = gets.chomp.to_i
  
  raspberry_bush = RaspberryBush.new(count_of_raspberries)
  player = Human.new(name, raspberry_bush)

  puts("Now we can start! select the desired number:")
  puts("1 - show information")
  puts("2 - grow bushes")
  puts("3 - try to collect")
  puts("4 - plant a new bush")
  puts("5 - show the amount of raspberries collected")
  puts("0 - finish the game")

  game = gets.chomp.to_i

  while game != 0
    
    case game
    when 1
      Human.knowledge_base
      puts("Choose the point:")

    when 2
      player.work
      puts("Level of raspberry state up!")
      puts("Choose the point:")
    
    when 3
      harvest = player.harvest
      if harvest == 1
        count_of_coolleccted_raspberries += count_of_raspberries
        puts("Choose the point:")
      else
        puts("Continnue work!")
        puts("Choose the point:")
      end
    
    when 4
      puts("are you sure? [y/n]")
      ans = gets.chomp.to_s
      if ans == "y"
        puts("choose the count of raspberries on the bush:")
        count_of_raspberries = gets.chomp.to_i
        player = Human.new(name, RaspberryBush.new(count_of_raspberries))
        puts("Choose the point:")
      else
        puts("Ok, lets continue..")
        puts("Choose the point:")
      end
    
    when 5
      puts("You coolected: " + count_of_coolleccted_raspberries.to_s + " raspberries!")
      puts("Choose the point:")
    end
    
    game = gets.chomp.to_i
  end
  puts("Thannk you to playing! See you!")
end