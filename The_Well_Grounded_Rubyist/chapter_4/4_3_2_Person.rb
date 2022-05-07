class Person
  PEOPLE = []  
  attr_reader :name, :hobbies, :friends

  def initialize(name)
    @name = name
    @hobbies = []
    @friends = []
    PEOPLE << self
  end

  def has_hobby(hobby)
    @hobbies << hobby
  end

  def has_friend(friend)
    @friends << friend
  end

  def Person.method_missing(m, *args)
    method = m.to_s
    if method.start_with?("all_with_")
      attr = method[9..-1]
      if Person.public_method_defined?(attr)
        PEOPLE.find_all do |person|
          person.send(attr).include?(args[0])
        end
      else
        raise ArgumentError, "Can't find #{attr}"
      end
    else
      super
    end
  end
end

j = Person.new('John')
p = Person.new('Paul')
g = Person.new('George')
r = Person.new('Ringo')
j.has_friend(p)
j.has_friend(g)
g.has_friend(p)
r.has_hobby('rings')

Person.all_with_friends(p).each do |person|
  puts "#{person.name} is friends with #{p.name}"
end

Person.all_with_hobbies('rings').each do |person|
  puts "#{person.name} is into rings"
end
