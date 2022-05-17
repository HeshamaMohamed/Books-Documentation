array = %w(cat dog rabbit)
e = array.map
# #<Enumerator: ['cat', 'dog', 'rabbit']:map>
e.each { |animal| animal.capitalize }
# ['Cat', 'Dog', 'Rabbit']
h = { cat: 'feline', dog: 'canine', cow: 'bovine' }
h.select { |key, value| key =~ /c/ }
# { :cat=>'feline', :cow=>'bovine' }
e = h.enum_for(:select)
# #<Enumerator: {:cat=>'feline', :dog=>'canine', :cow=>'bovine'}:select>
e.each { |key, value| key =~ /c/}
# { :cat=>'feline', :cow=>'bovine' }
e = h.to_enum
# #<Enumerator: {:cat=>'feline', :dog=>'canine', :cow=>'bovine'}:each>

h.each {}
# {:cat=>'feline', :dog=>'canine', :cow=>'bovine'}
e.each {}
# {:cat=>'feline', :dog=>'canine', :cow=>'bovine'}
e.select { |key, value| key =~ /c/ } # this select returns an array because it belongs to the Enumerator, not the Hash.
# [[:cat, 'feline'], [:cow, 'bovine']]

class PlayingCard
  SUITS = %w(clubs diamonds hearts spades)
  RANKS %w(2 3 4 5 6 7 8 9 10 J Q K A)
  class Deck
    def cards
      @cards.to_enum
    end

    def initialize(n = 1)
      @cards = []
      SUITS.cycle(n) do |s|
        RANKS.cycle(1) do |r|
          @cards << "#{r} of #{s}"
        end
      end
    end
  end
end

deck = PlayingCard::Deck.new
deck.cards << 'Joker!!'

names = %w(David Yukihiro)
e = names.to_enum
puts e.next
# David
puts e.next
# Yukihiro
e.rewind
puts e.next
# David

module Music
  class Scale
    NOTES = %w('c c# d d# e f f# g a a# b')
    def play
      NOTES.each { |note| yield note }
    end
  end
end

scale = Music::Scale.new
scale.play { |note| puts "Next note is #{note}" }
# Next note is c
# Next note is c#
# Next note is d

scale.map { |note| note.upcase }
# NoMethodError (unknown method 'map' for #<Music::Scale:03b0aec>)

enum = scale.enum_for(:play) # synonym to scale.to_enum(:play)

p enum.map { |note| note.upcase }
# ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'A', 'A#', 'B']
p enum.select { |note| note.include?('f') }
# ['f', 'f#']
