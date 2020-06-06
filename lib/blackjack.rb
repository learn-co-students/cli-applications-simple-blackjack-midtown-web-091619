require 'pry'

def welcome

  puts "Welcome to the Blackjack Table"

end

####

def deal_card
  
  rand(1..11)

end

####

def display_card_total(card_total)
  
  puts "Your cards add up to #{card_total}"
  
end

####

def prompt_user
  
  puts "Type 'h' to hit or 's' to stay"
  
end

####

def get_user_input
  
  gets.strip.chomp 

end

####

def end_game(card_total)
  
  puts "Sorry, you hit #{card_total}. Thanks for playing!"

end

####

def initial_round
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1 + card2)
  card1 + card2
end

####

def hit?(current_card_value)
  prompt_user
  user_input = get_user_input

  if user_input == "h"
    current_card_value += deal_card
  end
    while user_input != "h" && user_input != "s"
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  return current_card_value
end

####

def invalid_command
  
  puts "Please enter a valid command"
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  until hand > 21 do
    hand = hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end	
