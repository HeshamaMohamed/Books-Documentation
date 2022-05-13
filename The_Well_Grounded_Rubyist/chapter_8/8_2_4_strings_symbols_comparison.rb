p Symbol.instance_methods(false).sort

sym = :david
p sym.ucase
# :DAVID
p sym.succ
# :davie
p sym[2]
# 'v'
sym.casecmp(:david)
# 0
