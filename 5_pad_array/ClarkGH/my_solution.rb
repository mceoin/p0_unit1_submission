# U1.W3: Pad an Array!

# I worked on this challenge [by myself, with: ].

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
=begin

1. Create a function named pad with the arguments min-size and optional_value
2. pad will return the array if min_size is less than or equal to the array
3. pad will return the array if min_size is greater than the array, then will add a nil for each +1 pad added if there is no optional value listed
4. Optional value can be received as either an object or an array
4. if there is an optional value listed, and if min_size is greater than the array, then we will add 'optional_value' for each +1 pad added
5. pad will not permanently change the array
6. pad! will permanently change the array
7. pad will pad long arrays
8. pad will not pad when the min-size is less than zero, it will return the array
9. 

=end

# 2. Initial Solution
=begin

class Array
	def pad(min_size, optional_value = nil)
		array_clone = self.clone 
		until array_clone.length >= min_size do
			array_clone << optional_value
		end
		return array_clone
	end

	def pad!(min_size, optional_value = nil)
		until self.length >= min_size do 
			self << optional_value
		end
		return self
	end
end

=end

# 3. Refactored Solution

class Array
	def pad(min_size, optional_value = nil)
		array_clone = self.clone
		array_clone << optional_value until array_clone.length >= min_size
		return array_clone
	end

	def pad!(min_size, optional_value = nil)
		self << optional_value until self.length >= min_size
		return self
	end
end

# 4. Reflection 
=begin

What parts of your strategy worked? What problems did you face?

	I keep making stupid mistakes, I forgot to make the optional value equal to nil and just ran into error after error and kept wondering why my code wouldn't pass.
	I realized my mistake when I restarted the code from scratch and was able to get everything taken care of.

What questions did you have while coding? What resources did you find to help you answer them?

	I didn't know how to make a non destructive code so I discovered the .clone method.

What concepts are you having trouble with, or did you just figure something out? If so, what?

	Everything I did here is now in my mind, learning the .clone method as well as understanding how << works really helped me out.

Did you learn any new skills or tricks?

	.clone, <<, refresher on classes, and also a refresher on until

How confident are you with each of the learning objectives?

	I'm not entirely confident on this, I want more practice.

Which parts of the challenge did you enjoy?

	I liked being able to learn and do more research.

Which parts of the challenge did you find tedious?

	Figuring out why my code wasn't working.
=end