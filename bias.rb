#!/usr/bin/env ruby

####################

# Refactor for regexps:
# √ Text is read in as stream from file (no data structure needed)
# * Dictionary hash entry format can still be "PHRASE => VALUE"
# √ Simple implementation: 
# 		for dictonary.each {|key, value|, total+= value if text =~ /#{key}/i
# * Parser needs updating to tokenize phrases and corresponding values.
# 	This will require using an assignment operator.
# 	The equals sign ("=") will do for now, but may be replaced. 	

####################

require_relative 'preferences'
require_relative 'dict_parser'

# print "Enter the name of the file to read: "
unless ARGV[0]
	puts 'There was no file given.'
	puts "\tPlease give a filename in the form 'bias.rb [FILENAME]',"
	puts "\tor use 'bias.rb [FILENAME] [DICTIONARY]' if you wish "
	puts "\tto use a proprietary dictionary. See documentation on "
	puts "\thow to format a dictionary file."
	exit()
end

if ARGV[1] 
	puts "Proprietary dictionary detected. Reading..."
	dictionary = parse(ARGV[1]) 
else
	puts "No dictionary dectected. Will use default."
	dictionary = parse(DEFAULT_DICTIONARY)
end

filename = ARGV[0]
file = File.open( filename )
text = ""
file.each{ |line| text << line }

total = 0
result = []

if dictionary == nil
	puts "The dictionary was empty! Ending Program."
else
	puts "Dictionary Items found: "
	dictionary.each do |key, value| 
		result = text.scan(/#{key}/i)
		if result.size > 0
			puts "\t#{result.size} * '#{key}'(#{value}) = #{value * result.size}"
			total += value  * result.size
		end

	end
	puts "The total is #{total}"
end

