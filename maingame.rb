load 'cards.rb'
load 'method_storage.rb'
#require './cards.rb'

@numbers = %w(2 3 4 5 6 7 8 9 10 J Q K A)

@suits = %w(♦ ♠ ♥ ♣)

@faces = %w(J Q K A)

# @player_cards = []
# @dealer_cards = []

puts "Your cards:"
player = first_deal
# player == [[hand], score]

puts "Dealer's cards:"
dealer = first_deal
# dealer == [[hand], score]

# check for two aces, lower one of their values from 11 to 1
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

			# if player's score is now over 21, we stop, and...
			# dealer only hits if their score is less than 16
			if player[1] <= 21 && dealer[1] <= 16
				dealer = second_deal(dealer)
				puts "Dealer score: #{dealer[1]}"
			elsif player[1] > 21
				puts "Dealer wins. You went over 21."
			end

			if dealer[1] <= 21 && player[1] <= 21
				if player[1] == dealer[1]
					puts "It's a tie!"
				elsif player[1] > dealer[1]
					puts "You win!"
				else
					puts "Dealer wins."
				end
			elsif dealer[1] > 21
				puts "You win! They went over 21."
			end

		when 2
			# move on to dealer
			if dealer[1] <= 16
				dealer = second_deal(dealer)
				puts "Dealer score: #{dealer[1]}"
			end

			if player[1] == dealer[1]
				puts "It's a tie!"
			elsif player[1] > dealer[1] || dealer[1] > 21
				puts "You win!"
			else
				puts "Dealer wins."
			end

	end

end

puts @used_cards