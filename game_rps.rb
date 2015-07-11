# Allow user to choose rock paper or scissor
# Randomly generate r p s for computer
# Give rules when r is selected by user based on what computer selects. Do same for p and s
# Ask user to continue - if he does, start again. Or else end.

require 'pry'

# Ask if they want to play again. Defining method here but calling it later.
def play_again_trigger

  puts "Do you want to play again? Press Y or N."
  play_again = gets.chomp

  if play_again == "y" || play_again == "Y"
    game
  elsif play_again == "n" || play_again == "N"
    binding.pry
    puts "Thank you for playing. Good bye!"
  else
    puts "Please enter y or n only"
    play_again_trigger
  end

end

puts "Lets play rock paper scissors!"

# Declare variables to avoid undefined local variable error
# user = ""
# user_full = ""
# computer_random = ""
# computer = ""
# computer_full = ""

# Ask user to pick rock paper scissors
def game

  puts "Choose one: R or P or S"
  user = gets.chomp

  if user == "r" || user == "R"
    user_full = "Rock"
  elsif user == "p" || user == "P"
    user_full = "Paper"
  elsif user == "s" || user == "S"
    user_full = "Scissors"
  else
    puts "Please only enter R or P or S"
    game
  end
    
# Get computer to randomly generate rock paper scissors

  computer_random = Random.rand(1..3)

  if computer_random == 1
    computer = "R"
    computer_full = "Rock"
  elsif computer_random == 2
    computer = "P"
    computer_full = "Paper"
  elsif computer_random == 3
    computer = "S"
    computer_full = "Scissors"
  end
     
  puts "You picked #{user_full} and computer picked #{computer_full}"

# Do user vs computer comparison

  if user_full == "Rock"

    if computer_full == "Rock"
      puts "Its a tie!"
    elsif computer_full == "Paper"
      puts "Paper wraps Rock. You lost :("
    elsif computer_full == "Scissors"
      puts "Rock beats Scissors. You won :)"
    end
        
  elsif user_full == "Paper"

    if computer_full == "Rock"
      puts "Paper wraps Rock. You won :)"
    elsif computer_full == "Paper"
      puts "Its a tie!"
    elsif computer_full == "Scissors"
      puts "Scissors cut paper. You lost :("  
    end

  elsif user_full == "Scissors"

    if computer_full == "Rock"
      puts "Rock beats Scissors. You lost :("
    elsif computer_full == "Paper"
      puts "Scissors cuts Paper. You won :)"
    elsif computer_full == "Scissors"
      puts "Its a tie!"
    end

  end

  play_again_trigger

end

game


    
    