# Caesar Cipher takes a string and shifts all letters by some given number

def caesar_cipher(str,inc)
  rtnstr = ""
  str.each_char do |c|
    if /[a-zA-Z]/.match(c) # We only want to shift letters
      (inc%26).times {c.next!} # % 26 prevents the loop from running too long
      rtnstr << c[c.size-1] # if the string passes z it becomes aa,ab... we just want the last char
    else
      rtnstr << c
    end
  end
  puts rtnstr
end

caesar_cipher("What a string!", 5)
