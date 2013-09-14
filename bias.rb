#!/usr/bin/env ruby

require_relative 'preferences'
require_relative 'dict_parser'

# print "Enter the name of the file to read: "
unless ARGV[0]
	puts 'There was no file given.'
	puts "\tPlease give a filename in the form 'bias.rb [FILENAME]', \n\tor use 'bias.rb [FILENAME] [DICTIONARY]' if you wish \n\tto use a proprietary dictionary. See documentation on \n\thow to format a dictionary file."
	exit()
end

if ARGV[1] 
	puts "Proprietary dictionary detected. Reading..."
	dict = parse(ARGV[1]) 
else
	puts "No dictionary dectected. Will use default."
	dict = parse(DEFAULT_DICTIONARY)
end

filename = ARGV[0]
file = File.open( filename )
text_array = []
file.each{ |line| text_array = line.split }

total = 0

text_array.map do |word| 
	word.slice!(-1) if (word[-1] == "." || word[-1] == ",")
	word.downcase!
	total += dict[word] if dict[word]
end

puts "The total is #{total}"