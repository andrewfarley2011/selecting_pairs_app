
def pair(names)
	
	array = []
	# creates an empty array for objects to moved into later in the code
	
	array_paired_names = names.shuffle.each_slice(2)
 	# .shuffle shuffles the array of names, which is actually in the test 
	# .each_slice(2) moves the last 2 elements of the shuffled array names
	# into and array of their own within array_paired_names

	array_paired_names.each do |pair|
		
		if pair.length == 2
			array << pair
			# if pair == 2 it moves said pair into the empty array []
		
		else
			(array.last << pair).flatten!
			# if there is a remainder, pushes the remaining element into the final array of pairs
			# .flatten! changes the remaining element to part of the string
		
		end
	
	end
	
	array.map!{ |name1,name2,name3| "#{name1} " "#{name2} " "#{name3}"}.join"<br>"
	
end

