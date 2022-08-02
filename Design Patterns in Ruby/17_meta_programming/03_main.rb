class Tiger < CompositeBase
  member_of(:population)
  member_of(:classification)
end

class Tree < CompositeBase
  member_of(:population)
  member_of(:classification)
end

class Jungle < CompositeBase
  composite_of(:population)
end

class Species < CompositeBase
  composite_of(:classification)
end

def member_of_composite?(object, composite_name)
  object.respond_to?("parent_#{composite_name}")
end

tony_tiger = Tiger.new('tony')
se_jungle = Jungle.new('southeastern jungle tigers')
se_jungle.add_sub_population(tony_tiger)
tony_tiger.parent_population # => southeastern jungle tigers

species = Species.new('P. tigris')
species.add_sub_classification(tony_tiger)
tony_tiger.parent_classification # => P. tigris
