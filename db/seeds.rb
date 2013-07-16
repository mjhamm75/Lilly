# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if MeritBadgeList.all.count == 0 do
  MeritBadgeList.create([
      { name: "American Business" }
      { name: "American Cultures" }
      { name: "American Heritage" }
      { name: "American Labor" }
      { name: "Animal Science" }
      { name: "Archaeology" }
      { name: "Archery" }
      { name: "Architecture" }
      { name: "Art" }
      { name: "Astronomy" }
      { name: "Athletics" }
      { name: "Automotive Maintenance" }
      { name: "Aviation" }
      { name: "Backpacking" }
      { name: "Basketry" }
      { name: "Bird Study" }
      { name: "Bugling" }
      { name: "Camping" }
      { name: "Canoeing" }
      { name: "Chemistry" }
      { name: "Chess" }
      { name: "Cinematography" }
      { name: "Citizenship in the Community" }
      { name: "Citizenship in the Nation" }
      { name: "Citizenship in the World" }
      { name: "Climbing" }
      { name: "Coin Collecting" }
      { name: "Collections" }
      { name: "Communications" }
      { name: "Composite Materials" }
      { name: "Computers" }
      { name: "Cooking" }
      { name: "Crime Prevention" }
      { name: "Cycling" }
      { name: "Dentistry" }
      { name: "Disabilities Awareness" }
      { name: "Dog Care" }
      { name: "Drafting" }
      { name: "Electricity" }
      { name: "Electronics" }
      { name: "Emergency Preparedness" }
      { name: "Energy" }
      { name: "Engineering" }
      { name: "Entrepreneurship" }
      { name: "Environmental Science" }
      { name: "Family Life" }
      { name: "Farm Mechanics" }
      { name: "Fingerprinting" }
      { name: "Fire Safety" }
      { name: "First Aid" }
      { name: "Fish and Wildlife Management" }
      { name: "Fishing" }
      { name: "Fly Fishing" }
      { name: "Forestry" }
      { name: "Gardening" }
      { name: "Game Design" }
      { name: "Genealogy" }
      { name: "Geocaching" }
      { name: "Geology" }
      { name: "Golf" }
      { name: "Graphic Arts" }
      { name: "Hiking" }
      { name: "Home Repairs" }
      { name: "Horsemanship" }
      { name: "Indian Lore" }
      { name: "Insect Study" }
      { name: "Inventing" }
      { name: "Journalism" }
      { name: "Kayaking" }
      { name: "Landscape Architecture" }
      { name: "Law" }
      { name: "Leatherwork" }
      { name: "Lifesaving" }
      { name: "Mammal Study" }
      { name: "Medicine" }
      { name: "Metalwork" }
      { name: "Model Design and Building" }
      { name: "Motorboating" }
      { name: "Music" }
      { name: "Nature" }
      { name: "Nuclear Science" }
      { name: "Oceanography" }
      { name: "Orienteering" }
      { name: "Painting" }
      { name: "Personal Fitness" }
      { name: "Personal Management" }
      { name: "Pets" }
      { name: "Photography" }
      { name: "Pioneering" }
      { name: "Plant Science" }
      { name: "Plumbing" }
      { name: "Pottery" }
      { name: "Public Health" }
      { name: "Programming" }
      { name: "Public Speaking" }
      { name: "Pulp and Paper" }
      { name: "Radio" }
      { name: "Railroading" }
      { name: "Reading" }
      { name: "Reptile and Amphibian Study" }
      { name: "Rifle Shooting" }
      { name: "Rowing" }
      { name: "Robotics" }
      { name: "Safety" }
      { name: "Salesmanship" }
      { name: "Scholarship" }
      { name: "Scouting Heritage" }
      { name: "Scuba diving" }
      { name: "Sculpture" }
      { name: "Search and Rescue" }
      { name: "Shotgun Shooting" }
      { name: "Skating" }
      { name: "Small-Boat Sailing" }
      { name: "Snow Sports" }
      { name: "Soil and Water Conservation" }
      { name: "Space Exploration" }
      { name: "Sports" }
      { name: "Stamp Collecting" }
      { name: "Surveying" }
      { name: "Sustainability" }
      { name: "Swimming" }
      { name: "Textile" }
      { name: "Theater" }
      { name: "Traffic Safety" }
      { name: "Truck Transportation" }
      { name: "Veterinary Medicine" }
      { name: "Water Sports" }
      { name: "Weather" }
      { name: "Welding" }
      { name: "Whitewater" }
      { name: "Wilderness Survival" }
      { name: "Wood Carving" }
      { name: "Woodwork" }
    ])
end