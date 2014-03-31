# U1.W3: Pad an Array!

# I worked on this challenge [by myself, with: ].

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# The input is a _minimum size_ and an optional _pad value_

# What is the output? (i.e. What should the code return?)
# Output is a new array padded with the _pad value_ upto the _minimum size_
# If minimum size is less than or equal to length of array, should just return the array
# my_array.pad(0) should return an array equal to my_array
# pad should always return a new object - should be non-destructive
# pad! should be the same as pad but it modifies the underlying array

# What are the steps needed to solve the problem?
# If minimum size is less than or equal to array length return array
# If minimum size is 0 then return array
# If pad value is not present, then pad with {}

# Use push method to append pad value to end of array
# do this up to the minimum size


# 2. Initial Solution
class Array

# def pad(minsize, padvalue = nil)
# 	if minsize == 0
# 		self.dup
# 	elsif minsize <= self.length
# 		self.dup
# 	else
# 		(minsize-self.length).times do 
# 			self.push(padvalue)
# 		end
# 		return self
# 		# self + Array.new((minsize-self.length), padvalue)
# 	end
# end
def pad!(minsize, padvalue = nil)
	if minsize == 0
		self
	elsif minsize <= self.length
		self
	else
		minsize.times do self.push(padvalue)
		end
		return self
		# self + Array.new((minsize-self.length), padvalue)
	end
end
end
# my_array = [0,4,5,3,1]
# puts my_array.pad(25,"test")
# my_array = [0]
# puts my_array.pad(10,"test")
# my_array = []
# puts my_array.pad(10,"test")


# 3. Refactored Solution
class Array

def pad(minsize, padvalue = nil)
	newarray = self.clone
	if minsize == 0
		newarray
	elsif minsize <= self.length
		newarray
	else
		(minsize-newarray.length).times do 
			newarray.push(padvalue)
		end
		return newarray
		# self + Array.new((minsize-self.length), padvalue)
	end
end  
end 


# 4. Reflection 
