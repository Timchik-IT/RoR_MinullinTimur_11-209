load 'Human.rb'


if __FILE__ == 'main.rb'
  Human.knowledge_base

  puts('Enter the number of raspberries in the bush:')
  count_of_aspberry  = gets.chomp.to_i
  raspberry_bush = RaspberryBush.new(count_of_aspberry
  puts('Select a name for the employee:')
  name = gets.chomp.to_s
  worker = Human.new(name, raspberry_bush)

  puts(name + ' started to work')
  sleep 2
  worker.work
  puts(name + ' trying to pick raspberries...')
  worker.harvest

  puts('More woorkk!!!')
  sleep 2
  worker.work
  puts('Trying again')
  "...".each_char do |char|
    sleep 1  
    puts char
  end
  worker.harvest
end