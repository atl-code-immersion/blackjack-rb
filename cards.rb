def spades x
	puts " --------- "
	if x == 10
		puts "|#{x}       |"
	else
		puts "|#{x}        |"
	end
	puts "|♠        |"
	puts "|         |"
	puts "|    ♠    |"
	puts "|         |"
	puts "|        ♠|"
	if x == 10
		puts "|       #{x}|"
	else
		puts "|        #{x}|"
	end
	puts " --------- "
end

def hearts x
	puts " --------- "
	if x == 10
		puts "|#{x}       |"
	else
		puts "|#{x}        |"
	end
	puts "|♥        |"
	puts "|         |"
	puts "|    ♥    |"
	puts "|         |"
	puts "|        ♥|"
	if x == 10
		puts "|       #{x}|"
	else
		puts "|        #{x}|"
	end
	puts " --------- "
end

def clubs x
	puts " --------- "
	if x == 10
		puts "|#{x}       |"
	else
		puts "|#{x}        |"
	end
	puts "|♣        |"
	puts "|         |"
	puts "|    ♣    |"
	puts "|         |"
	puts "|        ♣|"
	if x == 10
		puts "|       #{x}|"
	else
		puts "|        #{x}|"
	end
	puts " --------- "
end

def diamonds x
	puts " --------- "
	if x == 10
		puts "|#{x}       |"
	else
		puts "|#{x}        |"
	end
	puts "|♦        |"
	puts "|         |"
	puts "|    ♦    |"
	puts "|         |"
	puts "|        ♦|"
	if x == 10
		puts "|       #{x}|"
	else
		puts "|        #{x}|"
	end
	puts " --------- "
end
#{s1}
def two_cards(x,y,s1,s2)
	if x != '10' && y != '10'
		puts " ---------      --------- "
		puts "|#{x}        |    |#{y}        |"
		puts "|#{s1}        |    |#{s2}        |"
		puts "|         |    |         |"
		puts "|    #{s1}    |    |    #{s2}    |"
		puts "|         |    |         |"
		puts "|        #{s1}|    |        #{s2}|"
		puts "|        #{x}|    |        #{y}|"
		puts " ---------      --------- "
	

	elsif x == '10' && y == '10'
		puts " ---------      --------- "
		puts "|#{x}       |    |#{y}       |"
		puts "|#{s1}        |    |#{s2}        |"
		puts "|         |    |         |"
		puts "|    #{s1}    |    |    #{s2}    |"
		puts "|         |    |         |"
		puts "|        #{s1}|    |        #{s2}|"
		puts "|       #{x}|    |       #{y}|"
		puts " ---------      --------- "


	elsif x == '10' && y != '10'
		puts " ---------      --------- "
		puts "|#{x}       |    |#{y}        |"
		puts "|#{s1}        |    |#{s2}        |"
		puts "|         |    |         |"
		puts "|    #{s1}    |    |    #{s2}    |"
		puts "|         |    |         |"
		puts "|        #{s1}|    |        #{s2}|"
		puts "|       #{x}|    |        #{y}|"
		puts " ---------      --------- "



	else # x != 10 && y == 10
		puts " ---------      --------- "
		puts "|#{x}        |    |#{y}       |"
		puts "|#{s1}        |    |#{s2}        |"
		puts "|         |    |         |"
		puts "|    #{s1}    |    |    #{s2}    |"
		puts "|         |    |         |"
		puts "|        #{s1}|    |        #{s2}|"
		puts "|        #{x}|    |       #{y}|"
		puts " ---------      --------- "


	end
end

def three_cards(x,y,z,s1,s2,s3)
	if x != '10' && y != '10' && z != '10'
		puts " ---------      ---------      --------- "
		puts "|#{x}        |    |#{y}        |    |#{z}        |"
		puts "|#{s1}        |    |#{s2}        |    |#{s3}        |"
		puts "|         |    |         |    |         |"
		puts "|    #{s1}    |    |    #{s2}    |    |    #{s3}    |"
		puts "|         |    |         |    |         |"
		puts "|        #{s1}|    |        #{s2}|    |        #{s3}|"
		puts "|        #{x}|    |        #{y}|    |        #{z}|"
		puts " ---------      ---------      --------- "

	elsif x == '10' && y == '10' && z == '10'
		puts " ---------      ---------      --------- "
		puts "|10       |    |10       |    |10       |"
		puts "|S        |    |S        |    |S        |"
		puts "|         |    |         |    |         |"
		puts "|    S    |    |    S    |    |    S    |"
		puts "|         |    |         |    |         |"
		puts "|       10|    |       10|    |        S|"
		puts "|        K|    |        K|    |       10|"
		puts " ---------      ---------      --------- "

	elsif x == '10' && y != '10' && z != '10'
		puts " ---------      ---------      --------- "
		puts "|10       |    |K        |    |K        |"
		puts "|S        |    |S        |    |S        |"
		puts "|         |    |         |    |         |"
		puts "|    S    |    |    S    |    |    S    |"
		puts "|         |    |         |    |         |"
		puts "|        S|    |        S|    |        S|"
		puts "|       10|    |        K|    |        K|"
		puts " ---------      ---------      --------- "

	elsif x != '10' && y == '10' && z != '10'
		puts " ---------      ---------      --------- "
		puts "|K        |    |10       |    |K        |"
		puts "|S        |    |S        |    |S        |"
		puts "|         |    |         |    |         |"
		puts "|    S    |    |    S    |    |    S    |"
		puts "|         |    |         |    |         |"
		puts "|        S|    |        S|    |        S|"
		puts "|        K|    |       10|    |        K|"
		puts " ---------      ---------      --------- "


	elsif x != '10' && y != '10' && z == '10'
		puts " ---------      ---------      --------- "
		puts "|K        |    |K        |    |10       |"
		puts "|S        |    |S        |    |S        |"
		puts "|         |    |         |    |         |"
		puts "|    S    |    |    S    |    |    S    |"
		puts "|         |    |         |    |         |"
		puts "|        S|    |        S|    |        S|"
		puts "|        K|    |        K|    |       10|"
		puts " ---------      ---------      --------- "

	else # x == '10' && y != '10' && z == '10'
		puts " ---------      ---------      --------- "
		puts "|10       |    |K        |    |10       |"
		puts "|S        |    |S        |    |S        |"
		puts "|         |    |         |    |         |"
		puts "|    S    |    |    S    |    |    S    |"
		puts "|         |    |         |    |         |"
		puts "|        S|    |        S|    |        S|"
		puts "|       10|    |        K|    |       10|"
		puts " ---------      ---------      --------- "
	end
end

def four_cards(x,y,z,a,s1,s2,s3,s4)
	# this part not done
	if x != '10' && y != '10' && z != '10' && a != '10'
		puts " ---------      ---------      ---------       --------- "
		puts "|K        |    |K        |    |K        |     |K        |"
		puts "|S        |    |S        |    |S        |     |S        |"
		puts "|         |    |         |    |         |     |         |"
		puts "|    S    |    |    S    |    |    S    |     |    S    |"
		puts "|         |    |         |    |         |     |         |"
		puts "|        S|    |        S|    |        S|     |        S|"
		puts "|        K|    |        K|    |        K|     |        K|"
		puts " ---------      ---------      ---------       --------- "

	elsif x == '10' && y == '10' && z == '10' && a == '10'
		puts " ---------      ---------      ---------       --------- "
		puts "|K        |    |K        |    |K        |     |K        |"
		puts "|S        |    |S        |    |S        |     |S        |"
		puts "|         |    |         |    |         |     |         |"
		puts "|    S    |    |    S    |    |    S    |     |    S    |"
		puts "|         |    |         |    |         |     |         |"
		puts "|        S|    |        S|    |        S|     |        S|"
		puts "|        K|    |        K|    |        K|     |        K|"
		puts " ---------      ---------      ---------       --------- "

	elsif x == '10' && y != '10' && z != '10' && a != '10'
		puts " ---------      ---------      ---------       --------- "
		puts "|K        |    |K        |    |K        |     |K        |"
		puts "|S        |    |S        |    |S        |     |S        |"
		puts "|         |    |         |    |         |     |         |"
		puts "|    S    |    |    S    |    |    S    |     |    S    |"
		puts "|         |    |         |    |         |     |         |"
		puts "|        S|    |        S|    |        S|     |        S|"
		puts "|        K|    |        K|    |        K|     |        K|"
		puts " ---------      ---------      ---------       --------- "

	elsif x == '10' && y != '10' && z == '10' && a == '10'
		puts " ---------      ---------      ---------       --------- "
		puts "|K        |    |K        |    |K        |     |K        |"
		puts "|S        |    |S        |    |S        |     |S        |"
		puts "|         |    |         |    |         |     |         |"
		puts "|    S    |    |    S    |    |    S    |     |    S    |"
		puts "|         |    |         |    |         |     |         |"
		puts "|        S|    |        S|    |        S|     |        S|"
		puts "|        K|    |        K|    |        K|     |        K|"
		puts " ---------      ---------      ---------       --------- "

	elsif x == '10' && y != '10'
		puts " ---------      ---------      ---------       --------- "
		puts "|K        |    |K        |    |K        |     |K        |"
		puts "|S        |    |S        |    |S        |     |S        |"
		puts "|         |    |         |    |         |     |         |"
		puts "|    S    |    |    S    |    |    S    |     |    S    |"
		puts "|         |    |         |    |         |     |         |"
		puts "|        S|    |        S|    |        S|     |        S|"
		puts "|        K|    |        K|    |        K|     |        K|"
		puts " ---------      ---------      ---------       --------- "
	else # x != 10 && y == 10
		puts " ---------      ---------      ---------       --------- "
		puts "|K        |    |K        |    |K        |     |K        |"
		puts "|S        |    |S        |    |S        |     |S        |"
		puts "|         |    |         |    |         |     |         |"
		puts "|    S    |    |    S    |    |    S    |     |    S    |"
		puts "|         |    |         |    |         |     |         |"
		puts "|        S|    |        S|    |        S|     |        S|"
		puts "|        K|    |        K|    |        K|     |        K|"
		puts " ---------      ---------      ---------       --------- "

	end
end