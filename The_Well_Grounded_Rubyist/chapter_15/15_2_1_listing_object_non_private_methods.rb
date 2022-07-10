string = 'Test string'
string.methods.grep(/case/).sort
# [:casecmp, :casecmp?, :downcase, :downcase!, :swapcase, :swapcase!, :upcase, :upcase!]

string.methods.grep(/.!/).sort
# [:capitalize!, :chomp!, :chop!, :delete!, :delete_prefix!, :delete_suffix!, :downcase!, :encode!,
#  :gsub!, :lstrip!, :next!, :reverse!, :rstrip!, :scrub!, :slice!, :squeeze!, :strip!, :sub!, :succ!,
#  :swapcase!, :tr!, :tr_s!, :unicode_normalize!, :upcase!]

methods = string.methods
bangs = methods.grep(/.!/).sort
unmatched = bangs.reject do |bang|
  methods.include?(bang[0..-2].to_sym)
end

if unmatched.empty?
  puts 'All bang methods are matched by non-bang methods.'
else
  puts 'Some bang methods have no non-bang partner:'
  puts unmatched
end
