#!/usr/.rvm/rubies/ruby-2.0.0-p247/bin/ruby

dict = {
	"the" => 1,
	"quick" => -1,
	"brown" => 1,
	"fox" => 1,
	"jumps" => -1
	"over" => -1,
	"my" => 1,
	"lazy" => 1,
	"dog" => -1
}

# print "Enter the name of the file to read: "
filename = ARGV[0]

file = File.open( filename )

text_array = []

file.each do |line|
	text_array = line.split
end

total = 0

text_array.each do |word| 
	word.slice!(-1) if (word[-1] == "." || word[-1] == ",")
	word.downcase!
	total += dict[word] if dict[word]
end

puts "The total is #{total}"