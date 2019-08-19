def welcome
  puts "Welcome to the Blackjack Table"
  "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total (card_total)
  card_total
end

def hit?(card_total)
  p prompt_user
  p decision = get_user_input
  if decision != "s" && decision != "h"
    invalid_command
    prompt_user
    decision = get_user_input
  end
  return card_total if decision == "s"
  return card_total += deal_card if decision == "h"
end

def invalid_command
  puts  "Please enter a valid command"
  "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  p welcome
  p card_total = initial_round
  # p display_card_total(card_total)
  until card_total > 21 do
    p card_total = hit?(card_total)
  end
  end_game(card_total)
end
