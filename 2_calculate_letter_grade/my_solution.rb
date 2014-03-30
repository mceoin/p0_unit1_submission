# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: Alyssa Ravasio].

# 1. Pseudocode
# create def getsgrade(array)
# fail any score is a number and !<0 & !>100
# compute (array).sum.average
# create boundaries that correspond to the letter grades (e.g. >= 90 = A)



# What is the input?
	# Numbers, hopefully
# What is the output? (i.e. What should the code return?)
	#string
# What are the steps needed to solve the problem?
	#see above


# 2. Initial Solution	

	def get_grade(array)
		total = 0
		array_of_truth = []

		array.each do |num|
			if (num.is_a? Integer) && num <= 100 && num >= 0
				array_of_truth << num
				total += num
			end
		end

		#puts total
		average = total / (array_of_truth.length)
		#puts average
		
		case average
			when 90..100 
				return "A"
			when 80..89
				return "B"
			when 70..79
				return "C"
			when 60..69
				return "D"
			else
				return "F"
		end
	end

#drive acode
puts get_grade([100, 100, 100]) # => 'A'

# 3. Refactored Solution
#tbh, I'm really happy with this, so no refactor today.


# 4. Reflection 
#First time using case method, it might be possible to refactor to make this shorter but I'm not comfortable enough to know / beat my head against the wall.
#I think I'm starting to get methods, and testing within methods.
#Having a person next to you who can answer things like "what do I enter to check if somethign is an integer?" really helps keep flow state, even if it's somethign you could have googled.
#I need to get more comfortable with << "push". For some reason I'm really expecting "push-into-something" to be written as >> instead. I shoudl really get over it, but they're arrows, you know?
#! "bang" = permanently alter array.
#when you do a method on each object in an array, you need to create a separate array to store the new values. There's probably a way to edit the original array but 1) I don't know how to do that yet, and 2) that might not be a good idea.
# it's possible that I didn't need to eject all non-integers, but I wanted to, so I'm happy I put extra code in here, even though Alyssa thought it was a total waste of time. (and that's why coders left alone never launch : )
#Hooray!
