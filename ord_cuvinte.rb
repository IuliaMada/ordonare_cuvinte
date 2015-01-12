
contents = File.open('wordlist1.txt')

words_arr = contents.readlines

words_arr.map! {|word| word.chomp.downcase}
# make a hash with key = words length and value = an array with all the words with that length
words_hash = words_arr.group_by {|word| word.length}

# does the same thing 
# words_arr.each do |value|
# 	words_hash[value.length] << value
# end

#sort values
keys_arr = words_hash.keys.sort
sorted_words = keys_arr.map! do |elem|
	words_hash[elem].sort
end

puts "Saving result to output file 'dictout'"

ordonate = File.new("wordlist_out", "w")
ordonate.puts sorted_words.flatten
ordonate.close 

	
