# Dictionary parser for bias program.
# Accepts one entry per line in the form "[PHRASE]= [VALUE]"

def parse dict_file   
	file = File.open( dict_file )

	phrases = []
	dictionary = {}
	
	# read in the file and put them into a hash which represents the dictionary
	file.each{ |line| phrases << line.split('=') }
	phrases.map do |key, value| 
		key.strip!
		value = 0 if value == nil || value == "#"
		dictionary[key] = value.to_i unless key[0] == '#' || key == ''
	end

	# feedback for the user
	puts "The dictionary was read"

	return dictionary
end