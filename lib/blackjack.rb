def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(10)+1
end

def display_card_total (total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game (total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = 0
  sum += deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(total)
  prompt_user
  command = get_user_input
  if command == "h"
    new_card = deal_card
    total += new_card
  elsif command == "s"
    return total
  else invalid_command
  end
  return total
end

def invalid_command
  puts "Please input a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  until hand > 21
    hand = hit?(hand)
    display_card_total(hand)
  end
end_game(hand)
end
