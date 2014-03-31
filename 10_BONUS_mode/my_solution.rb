# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with Eoin McMillan

# 1. Pseudocode

# What is the input?
# array of numbers and strings
# What is the output? (i.e. What should the code return?)
# An array of the most frequent values from our input
# What are the steps needed to solve the problem?
# define a method that takes an array
# scan each object in the array and create a counter that tallies 
#    how many times each object appears
# Array ---> Scan [0] ---> check if new array has this object 
#    already --> if yes, increase a method counter by one, 
#    if no, create a count for that object in our new array (object_count)

# # 2. Initial Solution

# def mode(array)
#     freqs = Hash.new(0)
#     array.each { |element| freqs[element] +=1 }
    
#     freqs = freqs.sort_by { |x,y| y }
#     freqs.reverse!
#     freqs.keep_if { |x,y| y == freqs[0][1] }
#     freqs.flatten!
#     filter = []
#     for i in 0...freqs.length
#     	if i%2==0
#     	  filter << freqs[i]
#     	end
#     end
#     return filter.sort

# end


# 3. Refactored Solution

def mode(array)
    freq = Hash.new(0)
    array.each { |element| freq[element] +=1 } # create hash object:frequency
    freq = freq.sort_by { |x,y| y }.reverse! # sort-largest value frequency 1st
    freq.keep_if { |x,y| y == freq[0][1] }.flatten!.uniq! # keep keys w/largest values 
    return freq.select {|x| freq.index(x).even?}.sort #sort only the keys
end

# 4. Reflection 
# Man, Jon and I had great fun on this one. We got that "hit" after solving what we thought were our initial hash problems... and then we tested and it turned out that we were pretty far off the mark. Jon seemed pretty good with hashes and loops, while I have learned from ... not being great at much anything so far that the best way to figure out what's going on is to break it down line by line once you think you have a solution and to test your code in chunks... only that way can you identify what the problem is.
#(Kevin Kang served up the uniq!)


# Things I need to get better at:
# *understanding ruby methods (knowing them by heart really expands my options for solving problems)
# *loops
# *hashes ... I'm not strong at this yet. 
# *I'm pretty sure there's a way to go back and refactor this so we're not using .sort, but deadline approaches and it works, so we ship.

# This would have taken much more than twice as long without Jon.
