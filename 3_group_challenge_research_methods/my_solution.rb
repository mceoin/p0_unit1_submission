# U1.W3: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4,
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(ary, thing_to_find)
  ary.select {|word| word.to_s.include?(thing_to_find)}
end

def my_hash_finding_method(hash, age)
  hash.select {|k,v| v == age}.keys
end

# Identify and describe the ruby method you implemented. 
# I used Array#select which takes block as a parameter and returns all matches in an Array
# I used String#include? method which takes a parameter and returns true if there is a match and false otherwise 
# I used Hash#select which is same as Array#select but takes both key value pairs as block parameters
# I used Hash#keys method which returns list of keys of corresponding hash in an Array

# Person 2 solution
def my_hash_modification_method(source, things_to_modify)
  source.each {|k, v| source[k] = v + things_to_modify}
end

def my_array_modification_method(source, thing_to_modify)
  
  source.map! do |x|
  	if x.is_a? Integer
			x = (x+thing_to_modify)
		else
			x
		end
  end
end


# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 3
  def my_array_sorting_method(source)
    source.map {|array_Element| array_Element.to_s}.sort.uniq
  end

  def my_hash_sorting_method(source)
    source.sort_by {|keez, valyooz| [valyooz, keez]}
  end

# Identify and describe the ruby method you implemented. 

# 1) I used .map! which is a destructive method that produces a new array 
# containing the results of running the block of code for each element of 
# the array it's used on

# 2) I used .sort which sorts the elements of an array in ABC order
# (numbers before uppercase letters before lowercase letters)

# 3) I used .uniq which removes duplicate elements in the returned array
# 4) I used .sort_by which sorts a hash using a set of keys and values


# Person 4

def my_array_deletion_method(source, thing_to_delete)	
	source.delete_if {|x| x.class.to_s == "String" && x.include?(thing_to_delete) == true}
	
end

def my_hash_deletion_method(source, thing_to_delete)
	source.delete_if {|k, v| k.to_s == thing_to_delete}
end


# Identify and describe the ruby method you implemented. 
# Array#delete_if and Hash#delete_if which takes a block and deletes elements from an array
# or Hash related to any condition written in the blok.
# String#include? which takes a parameter and returns a boolean if it finds
# the parameter passed in the string.
# #class which returns the class of the object,


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods.
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]]
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
#
#
#
#
# 
