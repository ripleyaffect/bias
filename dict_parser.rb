# Dictionary parser for bias program.
# Accepts one entry per line in the form "[WORD] [VALUE]"

def parse dict_file   
	file = File.open( dict_file )

	words = []
	dictionary = {}
	
	# read in the file and put them into a hash which represents the dictionary
	file.each{ |line| words << line.split }
	words.map do |key, value| 
		value = 0 if value == nil || value = "#"
		dictionary[key] = value.to_i unless key == '#' 
	end

	# feedback for the user
	puts "The dictionary was read"

	return dictionary
end