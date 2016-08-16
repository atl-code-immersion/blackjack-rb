@used_cards = []

def sampler
	arr = []
	num = @numbers.sample
	suit = @suits.sample

	if @used_cards.include?(num+suit)
		sampler
	else
		@used_cards.push(num+suit)
	end

	arr.push(num)
	arr.push(suit)
	return arr
end

def first_deal
	arr = []

	first_card = sampler
	# x = @numbers.sample
	# s1 = @suits.sample
	# @used_cards.push(x+s1)

	second_card = sampler
	# y = @numbers.sample
	# s2 = @suits.sample
	# @used_cards.push(y+s2)

	two_cards(first_card[0],second_card[0],first_card[1],second_card[1])

	arr.push([(first_card.join),(second_card.join)]) # first index = hand

	x = face_check(first_card[0])
	y = face_check(second_card[0])

	arr.push(x+y) # second index = score
	return arr
end

def second_deal(arr)
	# arr = [[card1, card2], score_from_first_round]

	third_card = sampler
	# z = @numbers.sample
	# s3 = @suits.sample
	# @used_cards.push(z+s3)

	# print out three cards together
	three_cards(arr[0][0][0..-2],arr[0][1][0..-2],third_card[0],arr[0][0][-1],arr[0][1][-1],third_card[1])

	# add third card to hand
	arr[0].push(third_card.join)
	# now arr = [[card1, card2, card3], score_from_first_round]

	if third_card[0] == 'A'
		if arr[1] < 11 # score is less than 11
			third_card[0] = '11'
		else
			third_card[0] = '1'
		end
	end

	z = face_check(third_card[0])

	arr[1] += z
	# now arr = [[card1, card2, card3], x+y+z(score)]

	return arr
end

def face_check(num)
	if @faces.include? num
		if num != 'A'
			num = 10
		else
			num = 11
		end
	end
	return num.to_i
end