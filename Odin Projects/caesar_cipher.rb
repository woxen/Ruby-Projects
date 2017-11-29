# Caesar Cipher takes a string and shifts all letters by some given number

def caesar_cipher(str,inc)
  rtnstr = ""
  str.each_char do |c|
    # We only want to shift letters and keep anything else unchanged
    # % 26 prevents loop from running too long for very large increment inputs
    (inc%26).times {c.next!} if /[a-zA-Z]/.match(c)
    rtnstr << c[c.size-1] # if the string passes z it becomes aa,ab... we just want the last char
  end
  puts rtnstr
end

caesar_cipher("What a string!", 5)
