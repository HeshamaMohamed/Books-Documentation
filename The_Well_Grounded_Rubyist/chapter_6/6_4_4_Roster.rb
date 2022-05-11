class Roster
  attr_accessor :players
end

class Player
  attr_acessor :name, :position
  def initialize(name, position)
    @name = name
    @position = position
  end
end

moore = Player.new('Maya moore', 'Forward')
taurasi = Player.new('Diana Taurasi', 'Guard')
tourney_roster1 = Roster.new
tourney_roster1.players = [moore, taurasi]

if tourney_roster1.players.first.position == "Forward"
  puts "Forward: #{tourney_roster1.players.first.name}"
end

tourney_roster2 = Roster.new
if tourney_roster2.players&.first&.position == "Forward"
  puts "Forward: #{touurney_roster1.players.first.name}"
end
