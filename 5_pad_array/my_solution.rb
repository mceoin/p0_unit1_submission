# U1.W3: Pad an Array!

# I worked on this challenge [by myself, with: ].

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: Alyssa Ravasio - she wasn't very helpful.].

# 1. Pseudocode

# What is the input?
### Input is an an integer and an optional pad value [arguments of the method that will be called on an array] 
# What is the output? (i.e. What should the code return?)
### Output is an array, similar to the array that the method that was called upon, but modified to reflect the pad statements (either nil, or whatever has been elected)
### Concisely: Output is an array of an elected length (defined by pad), filled in with "nil" or a value if the array is padded by our pad method.

# What are the steps needed to solve the problem?
### 1) Define method called pad that:
### a) checks an array length
### b) takes an argument that defines a minimum length for that array 
### c) checks that the minimum length is a non-negative integer
### d) includes a loop modifies the array with extra values to meet the minimum size ("padding")
### e1) if a second pad argument is included (e.g. pad(5, "ocelot") then the injected values ("padding") will be Ocelot (e.g. pad(5) = [1,2,3, ocelot, ocelot])
### e2) if a second argument is not included as an argument, then the injected values ("padding") will be returned as 'nil'. (How very unimaginative)
### f) returns the new array
### g) make sure above works for a ! modifier.

# 2. Initial Solution
######### Alright, let's write some code! OMG.. CAFFIENE!!!!
### hey woah. Normally you know how many arguments your method will take... but not this time... this could interesting.
### Oh jeez, I guess it's time to learn "splat", which I'm sure is a misnomer and not nearly as fun as it sounds ("fun" like banking your head into a wall).
### define method as a class ("wax on")
### the way to refer to the thing you are calling the method on is to use keyword "self"
### Okok, Alyssa just totally "gave" me the .times keyword, so I'm reading up on .times do, which seems like a nice way to brute-force a loop statement without writing a complicated loop.
### definitely should have seen this coming. Totally ignored the !bang until now, passed 1 of 9.
### Interesting side effect of a *splat; it throws each added element into an array, so we need to go back and call that array with the index number of the desired splatted element (in this case, 0).
### oh sweet! We had 		new_array << padder_word[0] || nil, but you don't need the || nil (mid-process refactor ftw!)
### Ok, I never would have understood this (Alyssa has proven herself useful, finally, by identifying the object id error as staying the same, so a clone was in order to stop that happening, even though I wasn't actually deleting or overwriting anything. By which I mean, a non-destructive method *has to* return a new object.)

class Array

	def pad!(minimum_length, *padder_word)

		if minimum_length > 0 
			(minimum_length - self.length).times do 
				self << padder_word
			end	
			return self
		else 
			return self
		end
	end

	def pad(minimum_length, *padder_word)
		new_array = self.clone
		difference = minimum_length - new_array.length
		if minimum_length > 0
			difference.times do 
				new_array << padder_word[0]
			end	
			return new_array
		else 
			return new_array
		end
	end

end

print [0,1].pad!(0)

# 3. Refactored Solution


# 4. Reflection 
# Check it out: the following passes our pad! tests, but we know it doesn't actually do what we were required to do. Psyc!

# class Array

# 	def pad!(minimum_length, *padder_word)

# 		if minimum_length > 0 
# 			(minimum_length - self.length).times do 
# 				self << padder_word
# 			end	
# 			return self
# 		end
# 	end
# end

# Overachiever time (Alyssa is insufferable, insatiable, and invaluable) --- 
# DDT: Development Driven Testing
# so we added two new tests to the spec document. 
