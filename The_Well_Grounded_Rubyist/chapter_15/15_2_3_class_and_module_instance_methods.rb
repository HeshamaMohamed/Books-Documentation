p String.methods.grep(/methods/).sort
# [:instance_methods, :methods, :private_instance_methods, :private_methods, :protected_instance_methods,
#  :protected_methods, :public_instance_methods, :public_methods, :singleton_methods]

String.instance_methods # returns all public and protected instance methods.
String.public_instance_methods # returns all public instance methods.
String.protected_instance_methods # returns all protected instance methods.
String.private_instance_methods # returns all private instance methods.

p Range.instance_methods(false).sort # returns all instance methods defined in Range class Only.
# [:==, :===, :begin, :bsearch, :cover?, :each, :end, :eql?, :exclude_end?, :first,
#  :hash, :include?, :inspect, :last, :max, :member?, :min, :size, :step, :to_s]

# methods defined in Enumerable and overwritten by Range class
p Range.instance_methods(false).sort & Enumerable.instance_methods(false)
# [:first, :include?, :max, :member?, :min]

# =======================================================

overrides = {}
enum_classes = ObjectSpace.each_object(Class).select do |c|
  c.ancestors.include?(Enumerable) && c.name
end

enum_classes.sort_by(&:name).each do |c|
  overrides[c] = c.instance_methods(false) &
                 Enumerable.instance_methods(false)
end

overrides.delete_if { |_c, methods| methods.empty? }
overrides.each do |c, methods|
  puts "Class #{c} overrides: #{methods.sort.join(', ')}"
end
# Class ARGF.class overrides: to_a
# Class Array overrides: any?, collect, count, cycle, drop, drop_while, find_index, first, include?, map, max,
#                        min, reject, reverse_each, select, sort, sum, take, take_while, to_a, to_h, uniq, zip
# Class Enumerator overrides: each_with_index, each_with_object
# Class Enumerator::Lazy overrides: chunk, chunk_while, collect, collect_concat, drop, drop_while, find_all, flat_map, grep, grep_v,
#                                   lazy, map, reject, select, slice_after, slice_before, slice_when, take, take_while, uniq, zip
# Class Gem::List overrides: to_a
# Class Hash overrides: any?, include?, member?, reject, select, to_a, to_h
# Class ObjectSpace::WeakMap overrides: include?, member?
# Class Range overrides: first, include?, max, member?, min
# Class Struct overrides: select, to_a, to_h
