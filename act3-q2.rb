


puts "Welcome to the Adventure Game!"

answer = nil
points = 0
addition = 0
room_no = 0

puts "You have 0 points."

until answer == 'exit'
    
    puts "Choose a room (1 - 3) to enter or 'exit' to end the game: \n"
    answer = gets.chomp()
    #puts answer

    if answer == '1'
        addition = 5
    elsif answer == '2'
        addition = 10
    elsif answer == '3'
        addition = 15
    end

    room_no = answer
    points += addition

    unless answer == 'exit'
        puts "You entered Room #{room_no} and earned #{addition} points!"
    end

end

puts "Game over! You collected a total of #{points} points!"