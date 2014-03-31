# U1.W3: Pad an Array!

# I worked on this challenge [by myself].

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# pad method
# CREATE Method '#pad' which takes two variables, a num and a pad value
# IF num input is less than or equal to array.length, do nothing and return the original array
# ELSE 
#   DO action (num - array.length) times
#     push pad value into array
#   END LOOP
# RETURN a padded array w/o altering the input
# For pad! version, do basically the same code 
#


# 2. Initial Solution

# class Array

# 	def pad(min_size, pad_value = nil)
# 		my_array = [] + self
# 		pad_count = min_size - my_array.length
# 		if min_size == 0
# 			return my_array
# 		elsif min_size <= my_array.length
# 			return my_array
# 		else
# 			pad_count.times do
# 				my_array << pad_value
# 			end
# 			return my_array
# 		end
# 	end

# 	def pad!(min_size, pad_value = nil)
# 		pad_count = min_size - self.length
# 		if min_size == 0
# 			return self
# 		elsif min_size <= self.length
# 			return self
# 		else 
# 			pad_count.times do
# 				self << pad_value
# 			end
# 			return self
# 		end
# 	end

# end



# 3. Refactored Solution

class Array
	
	def pad(min_size, pad_value = nil)

		my_array = [] + self
  	pad_count = min_size - my_array.length

  	unless pad_count > 0
  		return my_array 
  	else 
  		pad_count.times {my_array << pad_value}
  		return my_array
  	end

	end


	def pad!(min_size, pad_value = nil)
	  
	  pad_count = min_size - self.length
  	
  	unless pad_count > 0
  		return self 
  	else 
  		pad_count.times {self << pad_value}
  		return self
  	end

	end

end

# 4. Reflection 
# I was very impressed with how Ruby is able to do more with less code.  I'm trying to get out of using if/elsif branching and look for something cleaner, and the closest I found was the unless statement. Probably more room for refactoring, but still like that the new code is somewhat cleaner than before. 

