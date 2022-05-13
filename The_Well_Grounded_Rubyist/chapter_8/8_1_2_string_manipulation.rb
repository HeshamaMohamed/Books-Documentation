string = 'Ruby is a cool language.'
# => 'Ruby is a cool language.'
puts string[5] 
# => "i"
puts string[-12]
# => "o"
puts string[5,10]
# => "is a cool "
puts string[7...14]
# => " a cool"
puts string[-12..-3]
# => "ol languag"
puts string[-12..20]
# => "ol langua"
puts string[15...-1]
# => "language"
puts string["cool lang"]
# => "cool lang"
puts string["very cool lang"]
# => nil
puts string[/c[ol ]+/]
# => "cool l"
puts string.slice!("cool ")
# => "cool "
puts string
# => "Ruby is a language."
puts string = 'Ruby is a cool language'
# =>'Ruby is a cool language'
puts string['cool'] = 'great'
# => 'great'
puts string
# =>'Ruby is a great language'
puts string[-1] = '!'
# => '!'
puts string
# => 'Ruby is a great language!'
puts string[-1..-1] = 'thing to learn!'
# => 'things to learn!'
puts string
# => 'Ruby is a great thing to learn!'
