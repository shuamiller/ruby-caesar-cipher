def caesar_cipher(string, factor)
  alpha_arr = ('a'..'z').to_a
  new_arr = []
  down_string = string.downcase
  down_string.each_char { |chr|
    if chr =~ /[a-z]/
      old_index = alpha_arr.index(chr)
      j = 1
      while j <= factor
        old_index = old_index + 1
        if old_index == 26
          old_index = 0
        end
        j = j + 1
      end
      new_index = old_index
      new_arr.push(alpha_arr[new_index])
    else
      new_arr.push(chr)
    end
  }
  coded_string = new_arr.join
  i = 0
  while i < string.length
    if string[i] =~ /[A-Z]/
      coded_string[i] = coded_string[i].upcase
    end
    i = i + 1
  end
  puts coded_string
  return coded_string
end
