:a
:book
:"Here's how to make a symbol with spaces in it."
'a'.to_sym
# :a
'Converting string to symbol with intern....'.intern
# :"Converting string to symbol with intern...."
:a.to_s
# 'a'

Symbol.all_symbols.size
# 3892
abc = 1
# 1
Symbol
# 3893
Symbol.all_symbols.grep(/abc/)
# [:abc]
def abc; end
# :abc
Symbol.all_symbols.size
# 3893

abc = :my_symbol
Symbol.all_symbols.size
# 3894
Symbol.all_symbols.grep(/my_symbol/)
# [:my_symbol]

