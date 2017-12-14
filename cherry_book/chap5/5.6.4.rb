def register_people(name, gender:, age:, **others)
  puts name
  puts gender
  puts age
  puts others
end

register_people('John', gender: 'M', age: 35, sport: 'soccer', music: 'classic')
