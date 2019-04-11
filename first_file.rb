class Student
	attr_accessor :first_name, :last_name, :phone_number

	def introduction(target)
		puts "Hello, #{target}. I'm #{first_name}!"
	end

	def favorite_number
		7
	end

end

kristi = Student.new
kristi.first_name = "Kristi"
kristi.introduction("Steve")
puts "#{kristi.first_name}'s favorite number is #{kristi.favorite_number}"


# Can't instantiate with arguments!
# steve = Student.new("Steve", "Lanzisera", 510-282-3655)
# steve.introduction
# steve.phone_number


######## 99 bottles of beer on the wall ########

#{number} of beer on the wall, #{number} of beer.
# Take one down, pass it arround
#{number} bottles of 

def sing_bottles_of_beer(number)

	while number > 0
		puts "#{number} bottles of beer on the wall"
		puts "#{number} bottles of beer"
		puts "Take one down, pass it around"
		if number - 1 == 0
			puts "You drank all the beer you filthy alcoholic!"
		end
		number -= 1
	end
end

# sing_bottles_of_beer(99)
# sing_bottles_of_beer(3)

# Write a Deaf Grandma program. Whatever you say to grandma (whatever you type in), she should respond with  
# HUH?!  SPEAK UP, SONNY!, unless you shout it (type in all capitals). If you shout, she can hear you 
# (or at least she thinks so) and yells back, NO, NOT SINCE 1938! To make your program really believable, 
# have grandma shout a different year each time; maybe any year at random between 1930 and 1950. 
# (This part is optional, and would be much easier if you read the section on Ruby's random number 
# 	generator at the end of the methods chapter.) You can't stop talking to grandma until you shout BYE.
# Hint: Don't forget about  chomp!  'BYE'with an Enter is not the same as 'BYE' without one!
# Hint 2: Try to think about what parts of your program should happen over and over again. All of 
# those should be in your while loop.

# Write a Deaf Grandma program. Whatever you say to grandma (whatever you type in), she should respond with  
# HUH?!  SPEAK UP, SONNY!, unless you shout it (type in all capitals). If you shout, she can hear you 
# (or at least she thinks so) and yells back, NO, NOT SINCE 1938! To make your program really believable, 
# have grandma shout a different year each time; maybe any year at random between 1930 and 1950. 
# (This part is optional, and would be much easier if you read the section on Ruby's random number 
# 	generator at the end of the methods chapter.) You can't stop talking to grandma until you shout BYE.
# Hint: Don't forget about  chomp!  'BYE'with an Enter is not the same as 'BYE' without one!
# Hint 2: Try to think about what parts of your program should happen over and over again. All of 
# those should be in your while loop.

# def deaf_grandma
# 	puts "Say something to grandma."
# 	response = gets.chomp
# 	end_visit = false
# 	while not end_visit
# 		if response == response.upcase
# 			year = rand(1930..1951)
# 			puts "NO, NOT SINCE #{year}!"

# 		elsif response == "BYE"
# 			i = 1
# 			While i < 3
# 				response = gets.chomp
# 				i += 1
# 			end
# 			end_visit = true
			
# 		else
# 			puts "HUH?! SPEAK UP, SONNY!"
# 		end
# 		response = gets.chomp
# 	end
# end

# deaf_grandma


######### sorted array ########
# Let's write a program which asks us to type in as many words as we want (one word per line, 
# continuing until we just press Enter on an empty line), and which then repeats the words back 
# to us in alphabetical order.

# Ask user to type in many words
# End by pressing enter on an empty line
# Return sorted list of arrays

# def sort_list array

# 	# Need base case!!
# 	if array.length < 2 or 
# 		return array
# 	end

# 	mid_index = array.length / 2
# 	puts "mid_index: #{mid_index}"
# 	left = array[0,mid_index]
# 	puts "Left: #{left}"
# 	right = array[mid_index, -1]
# 	puts "Right #{right}"

# 	sorted_left = sort_list(left)
# 	puts "Sorted Left: #{sorted_left}"
# 	sorted_right = sort_list(right)
# 	puts "Sorted Right: #{sorted_right}"

# 	sorted_list = []
# 	current_index_left = 0
# 	current_index_right = 0

# 	while sorted_list.length < left.length + right.length
# 		if current_index_left < left.length and current_index_right == right.length or sorted_left[current_index_left] < sorted_right[current_index_right]
# 			sorted_list.push sorted_left[current_index_left]
# 			current_index_left += 1
# 		else
# 			sorted_list.push sorted_right[current_index_right]
# 			current_index_right += 1
# 		end
# 	end

# 	return sorted_list
# end


# def get_sorted
# 	puts "Enter any number of words. Press enter after each word."
# 	puts "Press enter on a blank line to exit."
# 	words = []
# 	response = gets.chomp
# 	while response != ""
# 		words.push response
# 		response = gets.chomp
# 	end

# 	sort_list words
# end

# puts get_sorted


####### How old #########

# Happy Birthday! Ask what year a person was born in, then the month, then the day. 
# Figure out how old they are and give them a big SPANK! for each birthday they have had.

# def seconds_to_years seconds
# 	years = (seconds / 31557600).floor
# end

# def num_spanks age
# 	age.times do
# 		puts "SPANK!"
# 	end
# end

# def how_old
# 	puts "What year were you born in?"
# 	year = gets.chomp
# 	puts "What month were you born in?"
# 	month = gets.chomp
# 	puts "What day were you born on?"
# 	day = gets.chomp

# 	birthday = Time.mktime(year, month, day)
# 	today = Time.new

# 	seconds_diff = today - birthday
# 	years_old = seconds_to_years seconds_diff

# 	num_spanks years_old
# end

# how_old


######### Die class #########

class Die
	def initialize
		@num = 6
	end	

	def roll
		@num = 1 + rand(6)
	end

	def showing
		@num
	end

	def cheat num
		if !(num >=1 and num < 7)
			puts "Valid die is 1-6"
			return
		end
		@num = num
	end
end

die = Die.new
puts die.showing
die.roll
puts die.showing
die.cheat 1
puts die.showing
die.cheat 7
puts die.showing


