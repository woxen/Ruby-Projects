def caesar_cipher(str,inc)
  rtnstr = ""
  str.each_char do |c|
    if /[a-zA-Z]/.match(c)
      (inc%26).times {c.next!}
      rtnstr << c[c.size-1]
    else
      rtnstr << c
    end
  end
  puts rtnstr
end

caesar_cipher("What a string!", 5)
