p 'Beginning seeding of database'

appellations = ['Los Carneros', 'Napa', 'Sonoma', 'Burgandy']
regions = ['France', 'Italy', 'Spain', 'US']

type = ['red', 'white', 'rose', 'sparkling', 'fortified']
red_grape_type = ['cabernet savignon', 'merlot', 'pinot noir', 'sangiovese', 'zinfandel']
white_grape_type = ['chardonay', 'moscato', 'pinot gris', 'pinot grigio', 'riesling', 'savignon blanc', 'semillon', 'white zinfandel']
rose_grape_type = ['rosé']
sparkling_grape_type = ['chardonnay', 'pinot noir']
fortified_grape_type = ['madeira', 'marsala', 'port', 'sherry']

milk = ['cow', 'sheep', 'goat']
texture = ['blue', 'hard', 'semi-hard', 'soft']
country = ['France', 'Ireland', 'Spain', 'US']

p 'Creating Grapes'
red_grape_type.length.times do |i|
  Grape.create(varietal: red_grape_type[i])
end

white_grape_type.length.times do |i|
  Grape.create(varietal: white_grape_type[i])
end

rose_grape_type.length.times do |i|
  Grape.create(varietal: rose_grape_type[i])
end

sparkling_grape_type.length.times do |i|
  Grape.create(varietal: sparkling_grape_type[i])
end

fortified_grape_type.length.times do |i|
  Grape.create(varietal: fortified_grape_type[i])
end


p 'Creating Regions'
regions.length.times do |i|
  Region.create(name: regions[i])
end

p 'Creating Appellations'
appellations.length.times do |i|
  Appellation.create(
    name: appellations[i],
    region_id: rand(1..4)
    )
end

p 'Creating Wineries'
20.times do |i|
  Winery.create(
    name:           "Winery #{i}",
    appellation_id:  rand(1..4),
    region_id:       rand(1..4)
    )
end

p 'Creating Wines'
100.times do
  Wine.create(
    vintage:              rand(1990..Time.now.year),
    winery_id:            rand(1..20), #start at 1 to avoid nil error w/ association
    grape_id:             rand(1..20), #start at 1 to avoid nil error w/ association
    alcohol_percentage:   rand(5..20),
    serving_temperature:  rand(40..60),
    sweetness:            rand(9),
    acidity:              rand(9),
    tanin:                rand(9),
    fruit:                rand(9),
    body:                 rand(9),
    category_type:        type[rand(4)],
    price:                rand(4..400)
    )
end

# p 'Creating Cheeses'
# 50.times do
#   Cheese.create(
#    name:              'Name',
#    country_of_origin: country[rand(0..2)],
#    region:            'Region',
#    milk:              milk[rand(0..2)],
#    texture_type:      texture[rand(0..3)],
#    color:             'Color',
#    age:               rand(0..24),
#    )
# end

# p 'Pairing Cheese and Wine'
# @wines = Wine.all
# Cheese.all.each_with_index do |cheese, index|
#   cheese.wines << @wines[index]
#   cheese.wines << @wines[index+50]
# end

# p 'Creating Traits'
# 200.times do
#   Trait.create(
#     name:         'Trait Name',
#     description:  'Description'
#     )
# end

p 'Database successfully seeded! Remember to never drink and drive!!'
