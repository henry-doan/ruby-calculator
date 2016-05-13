# create / edit a file
# stage the file - git add
# make a commit
# push to a github repo
@history = [ ]
def greeting
	puts "Welcome to the Ruby Calculator!"
end

def inputs
	puts "All inputs will be converted to numbers"
	first
	check
	puts " Enter the second number:"
	second_number = gets.to_f
	puts "Calculating..."
	answer = calculate_answer(operator, first_number, second_number)
	puts "The answer #{first_number} #{operator} #{second_number} is #{answer}"
	puts "#{answer}"
	@history << answer
	puts "#{@history}"
	puts "operator"
	operator = gets.strip
	puts "#{operator}"
	puts " Enter the second number:"
	second_number = gets.to_f
	puts "Calculating..."
	second_answer = continue(operator, answer, second_number)
	puts "#{second_answer}"
end

def first
	puts "Enter your first number:"
	first_number = gets.to_f
end

def calculate_answer(operator, first_number, second_number)
  if operator == "+"
    first_number + second_number
  elsif operator == "-"
   first_number - second_number
  elsif operator == "*"
    first_number * second_number
  elsif operator == "/"
    first_number / second_number
  else
  	puts "#{operator} is not supported, try one of these + - / *"
	calculate_answer
  end
end

def check
	puts " Enter Your operator"
	operator = gets.strip
	unless operator == '+' || operator == '-' || operator == '*' || operator == '/'
		puts "Bad input try again"
		check
	end
end

def continue(operator, answer, second_number)
	@history << answer
	if operator == "+"
		answer + second_number
	elsif operator == "-"
	   	answer - second_number
	elsif operator == "*"
	   	answer * second_number
	elsif operator == "/"
	   	answer / second_number
	else
	  	puts "#{operator} is not supported, try one of these + - / *"
		continue
		puts "Type q to leave or press enter to return"
		exit(0) if gets.strip == 'q'
	 end
end

while true
	greeting
	inputs
  	puts "Type q to leave or press enter to return or keep going by choosing an operator"
	exit(0) if gets.strip == 'q'
	continue
	inputs

end

# do all the bonuses
def clear
	inputs
end
