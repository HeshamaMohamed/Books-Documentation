string = 'A test string'
re = /A (sample) string/
# substring = re.match(string)[1]
# NoMethodError:undefined method[] for nil:NilClass

class Regexp
  alias __old_match__ match # sets up an alias for match.
  def match(string)
    __old_match__(string) || []
  end
end

p /abc/.match('X')
# []
p /abc/.match('X')[1]
# nil

# if regexp.match(string)
#   'do something'
# else
#   'do something else'
# end


string = 'Hello there!'
string.gsub!(/e/, 'E')
p string
# 'HEllo thErE!'

string = 'Hello there!'
string.gsub!(/zzz/, 'xxx')
p string
# 'Hello there!'

string = 'Hello there!'
string.gsub!(/e/, 'E').reverse!
# '!ErEht ollEH'
string = 'Hello there!'
# string.gsub!(/zzz/, 'xxx').reverse!
# NoMethodError (undefined method 'reverse!' for nil:NilClass

string = 'Hello there!'
string.gsub!(/zzz/, 'xxx')
string.reverse!
# '!ereht olleH'

class String
  alias __old_gsub_bang__ gsub!
  def gsub!(*args, &block)
    __old_gsub_bang__(*args, &block)
    self
  end
end

states = { 'NY' => 'New York', 'NJ' => 'New Jersey', 'ME' => 'Maine' }
string = 'Eastern states include NY, NJ, and ME.'
if string.gsub!(/\b([A-Z]{2})\b/) { states[$1] }
  puts 'Substitution occured'
else
  puts 'String unchanged.'
end

string = 'Eastern states include NY, NJ, and ME.'
if string.sub!(/\b([A-Z]{2})\b/) { states[$1] }
  puts "Replacing #{$1} with #{states[$1]}..."
end
# Replacing NY with New York...
# Replacing NJ with New Jersey...
# Replacing ME with Maine...

'Hello'.tap { |string| puts string.upcase }.reverse # #tap takse block, yields the receiver and returns it at the end.
# 'olleH'

string = 'Hello there!'
string.tap { |str| str.gsub!(/zzz/, 'xxx') }

require 'active_support'
require 'active_support/core_ext' # adds extra methods to String class
'person'.pluralize
# 'people'
'little_dorrit'.titleize
# 'Little Dorritt'

class String
  alias __old_reverse__ reverse
  def reverse
    $stderr.puts 'Reversing a string!'
    __old_reverse__
  end
end
puts 'David'.reverse

class String
  alias_method :__old_reverse__, :reverse # you can also create aliases this way
end

p Time.now.to_s # default
# "2022-05-20 08:15:54 +0200"
p Time.now.to_s(:db)
# "2022-05-20 08:18:58"
p Time.now.to_s(:number)
# "20220520081858"
p Time.now.to_s(:rfc822)
# "Fri, 20 May 2022 08:18:58 +0200"

module Secretive
  def name
    '[not available]'
  end
end

class Person
  attr_accessor :name
end
david = Person.new
david.name = 'David'
joe = Person.new
joe.name = 'Joe'
ruby = Person.new
ruby.name = 'Ruby'
david.extend(Secretive)
ruby.extend(Secretive)
puts "We've got one person named #{joe.name}, "
puts "one named #{david.name},"
puts "and one named #{ruby.name}."
# We've got one person named Joe,
# and one named [not available],
# and one named [not available]

class Car
  def self.makes
    %w[Honda Ford Toyoa Chevrolet Volvo]
  end
end

class Car
  class << self
    def self.makes
      %w[Honda Ford Toyoa Chevrolet Volvo]
    end
  end
end

module Makers
  def self.makes
    %w[Honda Ford Toyoa Chevrolet Volvo]
  end
end

class Car
  extend Makers # same as class << self
end

Car.extend(Makers) # same as above

p Car.singleton_class.ancestors
# [#<Class:Car>, Makers, #<Class:Object>, #<Class:BasicObject>, Class, Module, Module::Concerning, ActiveSupport::ToJsonWithActiveSupportEncoder, Object, JSON::Ext::Generator::GeneratorMethods::Object, ActiveSupport::Tryable, Kernel, BasicObject]

module GsubBangModifier
  def gsub!(*args, &block)
    super || self
  end
end
str = 'Hello there!'
str.extend(GsubBangModifier)
str.gsub!(/zzz/, 'abc').reverse!
p str
# "!ereht olleH"

module Shout
  refine String do
    def shout
      self.upcase + '!!!'
    end
  end
end

class Person
  attr_accessor :name
  using Shout
  def announce
    puts "Announcing #{name.shout}"
  end
end
david = Person.new
david.name = 'David'
david.announce
# Announcing DAVID!!!
