def first_deal
	arr = []

	x = @numbers.sample
	y = @numbers.sample

	s1 = @suits.sample
	s2 = @suits.sample

	two_cards(x,y,s1,s2)

	arr.push([(x+s1),(y+s2)]) # first index = hand

	x = face_check(x)
	y = face_check(y)

	arr.push(x+y) # second index = score
	return arr
end

def second_deal(arr)
	# arr = [[card1, card2], score_from_first_round]

	z = @numbers.sample
	s3 = @suits.sample

	# print out three cards together
	three_cards(arr[0][0][0..-2],arr[0][1][0..-2],z,arr[0][0][-1],arr[0][1][-1],s3)

	# add third card to hand
	arr[0].push(z+s3)
	# now arr = [[card1, card2, card3], score_from_first_round]

	if z == 'A'
		if arr[1] < 11 # score is less than 11
			z = '11'
		else
			z = '1'
		end
	end

	z = face_check(z)

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