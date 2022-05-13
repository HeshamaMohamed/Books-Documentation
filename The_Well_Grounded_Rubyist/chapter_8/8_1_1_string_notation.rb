puts "Backslashes (\\) have to be escaped in double quotes."
puts 'You can just type \ once in a single quoted string.'
puts "But whichever type of quotation mark you use..."
puts "... you have to escape its quotation symbol, such as \"."
puts 'That applies to \' in single-quoted strings too.'
puts 'Backslash-n just looks like \n between single quotes.'
puts "But it means newline\nin a double-quoted string."
puts 'Same with \t, which comes out as \t with single quotes...'
puts "... but inserts a tab character:\tinside double quotes."
puts "You can escape the backslash to get \\n and \\t with double quotes."

# puts %q{You needn't escape apostrophes or quotation marks (', '',  ", "") when using %q.}

puts %q-A string-
puts %Q/Another string/
puts %[Yet another string]

puts %Q{I can put {} in here unescaped.}
puts %q{I have to escape \(if I use it alone in here.}
puts %Q{And the same goes for \}.}