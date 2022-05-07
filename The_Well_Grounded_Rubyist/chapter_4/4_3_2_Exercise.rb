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

e = Person.new('Eric B.')
r = Person.new('Rakim')
e.has_friend(r)
e.has_hobby('cycling')
r.has_hobby('drums')

Person.all_with_hobbies('cycling').each do |person|
  puts "#{person.name} is into #{person.hobbies.first}"
end
