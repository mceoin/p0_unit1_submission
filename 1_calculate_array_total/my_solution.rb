# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].
#With Alyssa Ravasio

# 1. Pseudocode
#Define method total, which will take an array and sum all numbers in that array
#Create loop for var total, so that it goes through the array, adding each of the items in the array. (e.g. i++) (use the .inject)
#Create a stopping point for the loop.
#Call the method to make sure it works

#do i need to define array here?

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution


# def total ( array )
# 	array.inject { |sum,x| sum + x }
# end

# def sentence_maker ( array )
# 	sentence = ""
# 	array.each do |word|
# 		sentence = sentence +" "+ word
# 	end 
# 	sentence = sentence + "."
# 	sentence = sentence.strip!
# 	sentence = sentence.capitalize!
# 	puts sentence
# end

# .capitalize
# .


#sentence_maker(["i", "want", "to", "go", "to", "the", "movies"]) 
# driver code
# array =  [1,2,3,4] 
# puts total (array)



#straight from ruby's enumerable documentation


# 3. Refactored Solution
#do stackoverflow search to find way to sum the total of an array

def total ( array )
	array.inject { |sum,x| sum + x }
end

def sentence_maker ( array )
	sentence = ""
	array.each do |word|
		sentence = sentence +" "+ word.to_s
	end 
	sentence = (sentence + ".").strip!.capitalize!
end




# 4. Reflection 