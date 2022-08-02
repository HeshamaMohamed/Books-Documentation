def new_animal(diet, awake)
  animal = Object.new

  if diet == :meat
    animal.extend(Canivore)
  else
    animal.extend(Herbivore)
  end

  if awake == :day
    animal.extend(Diurnal)
  else
    animal.extend(Nocturnal)
  end

  animal
end
