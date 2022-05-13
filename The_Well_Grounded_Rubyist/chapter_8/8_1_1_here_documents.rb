# the ending EOM must be flush left.
text = <<EOM
This is the first line of text.
This is the second line.
Now we're done.
EOM

# puts text

query = <<SQL
SELECT count (DISTINCT users.id)
FROM users
WHERE users.first_name='Joe';
SQL

# puts query

# When Using <<- instead of <<, The ending EOM doesn't need to be flush left, could be anywhere in the line.
text = <<-EOM
The EOM doesn't have to be flush left
            EOM

# puts text

# use <<~ when you want to use indentation in the text within EOM and want to trail beginning white space in output

class RubyWelcomeWagon
  def message
    <<-EOM
      Welcome to the world of Ruby!
      We're happy you're here!
    EOM
  end
end

# puts RubyWelcomeWagon.new.message

# NOTE: for a single quoted EOM, wrap your starting EOM in single quotes.

text = <<-'EOM'
  Single-quoted!
  Note the literal \n
  And the literal #{2+2}.
EOM

# puts text

a = <<EOM.to_i * 10
5
EOM

# puts a

array = [1, 2, 3, <<EOM, 4]
This is the heredoc!
It becomes array[3].
EOM

# p array

# do_somewith_with_args(a, b, <<EOM)
# http://long_url
# EOM
