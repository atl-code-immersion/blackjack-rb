load 'cards.rb'
load 'method_storage.rb'
#require './cards.rb'

@numbers = %w(2 3 4 5 6 7 8 9 10 J Q K A)

@suits = %w(♦ ♠ ♥ ♣)

@faces = %w(J Q K A)

@player_cards = []
@dealer_cards = []


puts "Your cards:"
player = first_deal
# player == [[hand], score]

puts "Dealer's cards:"
dealer = first_deal
# dealer == [[hand], score]

if player[1] > 21
	player[1] -= 10
end
if dealer[1] > 21
	dealer[1] -= 10
end

puts "Your score: #{player[1]}"
puts "Dealer score: #{dealer[1]}"

if player[1] == 21 && dealer[1] == 21
	puts "It's a tie. Which is a type of loss."
elsif player[1] == 21
	puts "You won!"
elsif dealer[1] == 21
	puts "Dealer won"
else
	# next round
	# Check w/ player: hit or stand?
	# if they hit
	# second_deal w/ two first cards same as first_deal
	# if they stand
	# nothing happens for player
	puts "1. Hit or 2. Stand?"
	choice = gets.chomp.to_i

	case choice
		when 1
			# deal another card
			player = second_deal(player)
			puts "Player score: #{player[1]}"
		when 2
			# move on to dealer
	end


	# If Dealer's score less than 16
	# second_deal w/ two first cards same as first_deal
	# if >= 16
	# nothing happens for dealer
end



