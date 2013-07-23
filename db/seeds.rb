# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if MeritBadge.all.count == 0
  MeritBadge.create([
      { name: "American Business" },
      { name: "American Cultures" },
      { name: "American Heritage" },
      { name: "American Labor" },
      { name: "Animal Science" },
      { name: "Archaeology" },
      { name: "Archery" },
      { name: "Architecture" },
      { name: "Art" },
      { name: "Astronomy" },
      { name: "Athletics" },
      { name: "Automotive Maintenance" },
      { name: "Aviation" },
      { name: "Backpacking" },
      { name: "Basketry" },
      { name: "Bird Study" },
      { name: "Bugling" },
      { name: "Camping" },
      { name: "Canoeing" },
      { name: "Chemistry" },
      { name: "Chess" },
      { name: "Cinematography" },
      { name: "Citizenship in the Community" },
      { name: "Citizenship in the Nation" },
      { name: "Citizenship in the World" },
      { name: "Climbing" },
      { name: "Coin Collecting" },
      { name: "Collections" },
      { name: "Communications" },
      { name: "Composite Materials" },
      { name: "Computers" },
      { name: "Cooking" },
      { name: "Crime Prevention" },
      { name: "Cycling" },
      { name: "Dentistry" },
      { name: "Disabilities Awareness" },
      { name: "Dog Care" },
      { name: "Drafting" },
      { name: "Electricity" },
      { name: "Electronics" },
      { name: "Emergency Preparedness" },
      { name: "Energy" },
      { name: "Engineering" },
      { name: "Entrepreneurship" },
      { name: "Environmental Science" },
      { name: "Family Life" },
      { name: "Farm Mechanics" },
      { name: "Fingerprinting" },
      { name: "Fire Safety" },
      { name: "First Aid" },
      { name: "Fish and Wildlife Management" },
      { name: "Fishing" },
      { name: "Fly Fishing" },
      { name: "Forestry" },
      { name: "Gardening" },
      { name: "Game Design" },
      { name: "Genealogy" },
      { name: "Geocaching" },
      { name: "Geology" },
      { name: "Golf" },
      { name: "Graphic Arts" },
      { name: "Hiking" },
      { name: "Home Repairs" },
      { name: "Horsemanship" },
      { name: "Indian Lore" },
      { name: "Insect Study" },
      { name: "Inventing" },
      { name: "Journalism" },
      { name: "Kayaking" },
      { name: "Landscape Architecture" },
      { name: "Law" },
      { name: "Leatherwork" },
      { name: "Lifesaving" },
      { name: "Mammal Study" },
      { name: "Medicine" },
      { name: "Metalwork" },
      { name: "Model Design and Building" },
      { name: "Motorboating" },
      { name: "Music" },
      { name: "Nature" },
      { name: "Nuclear Science" },
      { name: "Oceanography" },
      { name: "Orienteering" },
      { name: "Painting" },
      { name: "Personal Fitness" },
      { name: "Personal Management" },
      { name: "Pets" },
      { name: "Photography" },
      { name: "Pioneering" },
      { name: "Plant Science" },
      { name: "Plumbing" },
      { name: "Pottery" },
      { name: "Public Health" },
      { name: "Programming" },
      { name: "Public Speaking" },
      { name: "Pulp and Paper" },
      { name: "Radio" },
      { name: "Railroading" },
      { name: "Reading" },
      { name: "Reptile and Amphibian Study" },
      { name: "Rifle Shooting" },
      { name: "Rowing" },
      { name: "Robotics" },
      { name: "Safety" },
      { name: "Salesmanship" },
      { name: "Scholarship" },
      { name: "Scouting Heritage" },
      { name: "Scuba diving" },
      { name: "Sculpture" },
      { name: "Search and Rescue" },
      { name: "Shotgun Shooting" },
      { name: "Skating" },
      { name: "Small-Boat Sailing" },
      { name: "Snow Sports" },
      { name: "Soil and Water Conservation" },
      { name: "Space Exploration" },
      { name: "Sports" },
      { name: "Stamp Collecting" },
      { name: "Surveying" },
      { name: "Sustainability" },
      { name: "Swimming" },
      { name: "Textile" },
      { name: "Theater" },
      { name: "Traffic Safety" },
      { name: "Truck Transportation" },
      { name: "Veterinary Medicine" },
      { name: "Water Sports" },
      { name: "Weather" },
      { name: "Welding" },
      { name: "Whitewater" },
      { name: "Wilderness Survival" },
      { name: "Wood Carving" },
      { name: "Woodwork" }
    ])
end

if MeritBadge.find_by_name("Swimming").eagle_required == false
  mb = MeritBadge.find_by_name("First Aid")
  mb.eagle_required = true
  puts 1
  mb.save
  mb = MeritBadge.find_by_name("Citizenship in the Community")
  mb.eagle_required = true
  puts 2
  mb.save
  mb = MeritBadge.find_by_name("Citizenship in the Nation")
  mb.eagle_required = true
  puts 3
  mb.save
  mb = MeritBadge.find_by_name("Citizenship in the World")
  mb.eagle_required = true
  puts 4
  mb.save
  mb = MeritBadge.find_by_name("Communications")
  mb.eagle_required = true
  puts 5
  mb.save
  mb = MeritBadge.find_by_name("Personal Fitness")
  mb.eagle_required = true
  puts 6
  mb.save
  mb = MeritBadge.find_by_name("Emergency Preparedness")
  mb.eagle_required = true
  puts 7
  mb.save
  mb = MeritBadge.find_by_name("Lifesaving")
  mb.eagle_required = true
  puts 8
  mb.save
  mb = MeritBadge.find_by_name("Environmental Science")
  mb.eagle_required = true
  puts 9
  mb.save
  mb = MeritBadge.find_by_name("Personal Management")
  mb.eagle_required = true
  puts 10
  mb.save
  mb = MeritBadge.find_by_name("Swimming")
  mb.eagle_required = true
  puts 11
  mb.save
  mb = MeritBadge.find_by_name("Hiking")
  mb.eagle_required = true
  puts 12
  mb.save
  mb = MeritBadge.find_by_name("Cycling")
  mb.eagle_required = true
  puts 13
  mb.save
  mb = MeritBadge.find_by_name("Camping")
  mb.eagle_required = true
  puts 14
  mb.save
  mb = MeritBadge.find_by_name("Family Life")
  mb.eagle_required = true
  puts 15
  mb.save
end

if Rank.all.count < 1
  Rank.create([
    {name: "Boy Scout", ordinal: 1},
    {name: "Tenderfoot", ordinal: 2},
    {name: "Second Class", ordinal: 3},
    {name: "First Class", ordinal: 4},
    {name: "Star", ordinal: 5},
    {name: "LIfe", ordinal: 6},
    {name: "Eagle", ordinal: 7},
    ])
    puts "Ranks created"
end

Scout.all.each do |scout|
  if scout.ranks.count == 0
    scout.ranks << Rank.all
  end
  puts "Ranks added to each scout"
end