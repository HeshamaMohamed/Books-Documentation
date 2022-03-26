# require 'byebug'

def naive_search(text, string)
  # debugger
  text_pos = 0 # text iterator
  while text_pos <= text.length - string.length + 1
    string_pos = string.length # string iterator
    while string_pos >= 0 && string[string_pos] == text[text_pos + string_pos - 1]
      string_pos -= 1
      puts "Occurence at position #{text_pos}" if string_pos.zero? # iterated over all string
    end
    text_pos += 1
  end
end

text = 'Haystack with a needle'
string = 'needle'
naive_search(text, string)
