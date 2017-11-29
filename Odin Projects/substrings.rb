dictionary = ["below","down","go","going","horn","how","howdy","it","i","low",
"own","part","partner","sit"]

# This method scans a given string for all occurences of a given list of
# substrings, and returns the number of non-zero occurences of each

def substring(string, dictionary)
  frequency_count = Hash.new()
  string.downcase!
  dictionary.each do |s| frequency_count[s] = string.scan(/#{s}/).size end
  return frequency_count.delete_if {|k,v| v == 0}
end

puts substring("Howdy partner, sit down! How's it going?", dictionary)
