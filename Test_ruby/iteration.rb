puts "First"

i = 3
while i <= 5 do
    puts i
    i += 1
end

puts "Seccond"

(1..5).each do |n|
    puts n
end

puts "max of arr"

arr = [1, 3, 2, -5, 0, 12]
max = arr[0]
i = 1
while i < arr.size do
    if arr[i] > max
        max = arr[i]
    end
    i += 1
end 
puts max