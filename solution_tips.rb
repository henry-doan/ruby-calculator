# a big problem and break it into little problems and then add methods for the solutions and etc.
# write psuedo code to break things down
# then replace the psuedo to the real solutions
# acts like a map
puts 'welcome message'
def menu
	puts 'the First number'
	@first_number = gets.to_f
	@op = operator
	#vailded the op and retry if it didn't
	puts 'second number'
	@second_number = gets.to_f
	@outputs = calculate
end

def operator # validation
	puts 'operator (+ - / *)'
	op = gets.strip
	unless op == '+' || op == '-' || op == '*' || op == '/'
		puts "Bad input try again"
		operator
	end
	op
end

def calculate 
	case @operator
	when '+'
		@first_number + @second_number
	when '-'
		@first_number + @second_number
	when '*'
		@first_number *@second_number
	when '/'
		#if they divide by 0
		@first_number / @second_number
	end
end

def output
	puts "#{@first_number} #{@op} #{@second_number} = #{output}"
end

while true
	menu
	puts "another one? (y/n)"
	choice = gets.strip.downcase
	exit(0) if choice == 'n'
end











