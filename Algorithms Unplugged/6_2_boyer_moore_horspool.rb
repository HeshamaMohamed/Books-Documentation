# require 'byebug'

def find(text, pattern)
  bm_table = {}

  # building the bad match table
  pattern.reverse.each_char.with_index do |char, idx|
    next if idx.zero?

    bm_table[char] = idx unless bm_table.include?(char)
  end

  # debugger
  text_pos = 0 # text iterator
  while text_pos <= text.length - pattern.length + 1
    pattern_pos = pattern.length - 1 # pattern iterator
    while pattern_pos >= 0 && pattern[pattern_pos] == text[text_pos + pattern_pos]
      pattern_pos -= 1
      puts "Occurence at position #{text_pos}" if pattern_pos.zero? # iterated over all pattern
    end
    text_pos +=
      if pattern.include?(text[text_pos + pattern_pos]) # checking if the current letter exists in pattern
        bm_table[text[text_pos + pattern.length - 1]] # times shifted is according to the bad match table
      else
        pattern.length
      end
  end
end

text = 'Haystack with a needle'
pattern = 'needle'
find(text, pattern)
