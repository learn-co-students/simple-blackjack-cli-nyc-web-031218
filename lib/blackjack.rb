def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}" 
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay" 
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round()
  round1 = deal_card + deal_card
  display_card_total(round1)
  return round1
end

def hit?(total)
  prompt_user
  input = get_user_input

if input === "s"
  total
elsif input === "h"
  total += deal_card
end
end

def invalid_command
  puts "invalid command!"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  
  end_game(card_total)
  
  
end
    
