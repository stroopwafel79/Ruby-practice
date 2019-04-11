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

def get_sorted
	puts "Enter any number of words. Press enter after each word. Press enter on a blank line to exit"
	words = []
	response = gets.chomp
	while response != ""
		words.push response
		response = gets.chomp
	end

	return words.sort
end

puts get_sorted
