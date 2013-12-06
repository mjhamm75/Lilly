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

if MeritBadge.find_by_name("Swimming").eagle_required == nil
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
    {name: "Boy Scout" },
    {name: "Tenderfoot" },
    {name: "Second Class" },
    {name: "First Class" },
    {name: "Star" },
    {name: "Life" },
    {name: "Eagle" },
    ])
  puts "Ranks created"
end

Scout.all.each do |scout|
  if scout.advancements.ranks.count == 0
    scout.advancements << Rank.all
    puts "Ranks added to scout"
  end

  if scout.scout_requirements.count == 0
    Rank.all.each do |r|
      scout.requirements << r.requirements
    end
  end
end

if Rank.find_by_name("Boy Scout").requirements.count == 0
  r = Requirement.create([
   {requirement:  "Meet the age requirements. Be a boy who is 11 years old, or one who has completed the fifth grade or earned the Arrow of Light Award and is at least 10 years old, but is not yet 18 years old.", internal_id: 1},
   {requirement:  "Find a Scout troop near your home.", internal_id: 2},
   {requirement:  "Complete a Boy Scout application and health history signed by your parent or guardian.", internal_id: 3},
   {requirement:  "Repeat the Pledge of Allegiance.", internal_id: 4},
   {requirement:  "Demonstrate the Scout sign, salute, and handshake.", internal_id: 5},
   {requirement:  "Demonstrate tying the square knot (a joining knot).", internal_id: 6},
   {requirement:  "Understand and agree to live by the Scout Oath, Scout Law, motto, slogan, and the Outdoor Code.", internal_id: 7},
   {requirement:  "Describe the Scout badge.", internal_id: 8},
   {requirement:  "Complete the pamphlet exercises. With your parent or guardian, complete the exercises in the pamphlet \"How to Protect Your Children from Child Abuse: A Parent's Guide\".", internal_id: 9},
   {requirement:  "Participate in a Scoutmaster conference. Turn in your Boy Scout application and health history form signed by your parent or guardian, then participate in a Scoutmaster conference.", internal_id: 10}
   ])
Rank.find_by_name("Boy Scout").requirements << r
puts "Boy Scout reqs created"

mb = Rank.find_by_name("Boy Scout").advancement_requirements.each do |req|
  if(req.requirement.internal_id == 1)
    req.update_attributes(:label => "1", :ord => 1)
  elsif(req.requirement.internal_id == 2)
    req.update_attributes(:label => "2", :ord => 2)
  elsif(req.requirement.internal_id == 3)
    req.update_attributes(:label => "3", :ord => 3)
  elsif(req.requirement.internal_id == 4)
    req.update_attributes(:label => "4", :ord => 4)
  elsif(req.requirement.internal_id == 5)
    req.update_attributes(:label => "5", :ord => 5)
  elsif(req.requirement.internal_id == 6)
    req.update_attributes(:label => "6", :ord => 6)
  elsif(req.requirement.internal_id == 7)
    req.update_attributes(:label => "7", :ord => 7)
  elsif(req.requirement.internal_id == 8)
    req.update_attributes(:label => "8", :ord => 8)
  elsif(req.requirement.internal_id == 9)
    req.update_attributes(:label => "9", :ord => 9)
  elsif(req.requirement.internal_id == 10)
    req.update_attributes(:label => "10", :ord => 10)
  end
end
puts "Updated Boy Scout ar's"
end

if Rank.find_by_name("Tenderfoot").requirements.count == 0
  r = Requirement.create([
   {requirement:  "Present yourself to your leader, properly dressed, before going on an overnight camping trip. Show the camping gear you will use. Show the right way to pack and carry it.", internal_id: 11},
   {requirement:  "Spend at least one night on a patrol or troop campout. Sleep in a tent you have helped pitch.", internal_id: 12},
   {requirement:  "On the campout, assist in preparing and cooking one of your patrol's meals. Tell why it is important for each patrol member to share in meal preparation and cleanup, and explain the importance of eating together.", internal_id: 13},
   {requirement:  "Do the following", internal_id: 14},
   {requirement:  "Demonstrate how to whip and fuse the ends of a rope.", internal_id: 15},
   {requirement:  "Demonstrate you know how to tie the following knots and tell what their uses are: two half hitches and the taut-line hitch.", internal_id: 16},
   {requirement:  "Using the EDGE method, teach another person how to tie the square knot.", internal_id: 17},
   {requirement:  "Explain the rules of safe hiking, both on the highway and cross-country, during the day and at night. Explain what to do if you are lost.", internal_id: 18},
   {requirement:  "Demonstrate how to display, raise, lower, and fold the American flag.", internal_id: 19},
   {requirement:  "Repeat from memory and explain in your own words the Scout Oath, Law, motto, and slogan.", internal_id: 20},
   {requirement:  "Know your patrol name, give the patrol yell, and describe your patrol flag.", internal_id: 21},
   {requirement:  "Explain the importance of the buddy system as it relates to your personal safety on outings and in your neighborhood. Describe what a bully is and how you should respond to one.", internal_id: 22},
   {requirement:  "Do the following.", internal_id: 23},
   {requirement:  "Record your best in the following tests:", internal_id: 24},
   {requirement:  "Current Results", internal_id: 25},
   {requirement:  "Push-ups", internal_id: 26},
   {requirement:  "Pull-ups", internal_id: 27},
   {requirement:  "Sit-ups", internal_id: 28},
   {requirement:  "Standing long jump", internal_id: 29},
   {requirement:  "1/4 mile walk/run", internal_id: 30},
   {requirement:  "30 days later", internal_id: 31},
   {requirement:  "Push-ups", internal_id: 32},
   {requirement:  "Pull-ups", internal_id: 33},
   {requirement:  "Sit-ups", internal_id: 34},
   {requirement:  "Standing long jump", internal_id: 35},
   {requirement:  "1/4 mile walk/run", internal_id: 36},
   {requirement:  "Show improvement in the activities listed in requirement 10a after practicing for 30 days.", internal_id: 37},
   {requirement:  "Identify local poisonous plants; tell how to treat for exposure to them.", internal_id: 38},
   {requirement:  "Do the following.", internal_id: 39},
   {requirement:  "Demonstrate how to care for someone who is choking.", internal_id: 40},
   {requirement:  "Show first aid for the following:", internal_id: 41},
   {requirement:  "Simple cuts and scrapes", internal_id: 42},
   {requirement:  "Blisters on the hand and foot", internal_id: 43},
   {requirement:  "Minor (thermal/heat) burns or scalds (superficial, or first degree)", internal_id: 44},
   {requirement:  "Bites or stings of insects and ticks", internal_id: 45},
   {requirement:  "Venomous snakebite", internal_id: 46},
   {requirement:  "Nosebleed", internal_id: 47},
   {requirement:  "Frostbite and sunburn", internal_id: 48},
   {requirement:  "Demonstrate Scout spirit by living the Scout Oath and Scout Law in your everyday life. Discuss four specific examples of how you have lived the points of the Scout Law in your daily life.", internal_id: 49},
   {requirement:  "Participate in a Scoutmaster conference.", internal_id: 50},
   {requirement:  "Complete your board of review.", internal_id: 51}
   ])
Rank.find_by_name("Tenderfoot").requirements << r
puts "Tenderfoot reqs created"

mb = Rank.find_by_name("Tenderfoot").advancement_requirements.each do |req|
  if(req.requirement.internal_id == 11)
    req.update_attributes(:label => "1", :ord => 1)
  elsif(req.requirement.internal_id == 12)
    req.update_attributes(:label => "2", :ord => 2)
  elsif(req.requirement.internal_id == 13)
    req.update_attributes(:label => "3", :ord => 3)
  elsif(req.requirement.internal_id == 14)
    req.update_attributes(:label => "4", :ord => 4)
  elsif(req.requirement.internal_id == 15)
    req.update_attributes(:label => "a", :ord => 5)
  elsif(req.requirement.internal_id == 16)
    req.update_attributes(:label => "b", :ord => 6)
  elsif(req.requirement.internal_id == 17)
    req.update_attributes(:label => "c", :ord => 7)
  elsif(req.requirement.internal_id == 18)
    req.update_attributes(:label => "5", :ord => 8)
  elsif(req.requirement.internal_id == 19)
    req.update_attributes(:label => "6", :ord => 9)
  elsif(req.requirement.internal_id == 20)
    req.update_attributes(:label => "7", :ord => 10)
  elsif(req.requirement.internal_id == 21)
    req.update_attributes(:label => "8", :ord => 11)
  elsif(req.requirement.internal_id == 22)
    req.update_attributes(:label => "9", :ord => 12)
  elsif(req.requirement.internal_id == 23)
    req.update_attributes(:label => "10", :ord => 13)
  elsif(req.requirement.internal_id == 24)
    req.update_attributes(:label => "a", :ord => 14)
  elsif(req.requirement.internal_id == 25)
    req.update_attributes(:label => "", :ord => 15)
  elsif(req.requirement.internal_id == 26)
    req.update_attributes(:label => "", :ord => 16)
  elsif(req.requirement.internal_id == 27)
    req.update_attributes(:label => "", :ord => 17)
  elsif(req.requirement.internal_id == 28)
    req.update_attributes(:label => "", :ord => 18)
  elsif(req.requirement.internal_id == 29)
    req.update_attributes(:label => "", :ord => 19)
  elsif(req.requirement.internal_id == 30)
    req.update_attributes(:label => "", :ord => 20)
  elsif(req.requirement.internal_id == 31)
    req.update_attributes(:label => "", :ord => 21)
  elsif(req.requirement.internal_id == 32)
    req.update_attributes(:label => "", :ord => 22)
  elsif(req.requirement.internal_id == 33)
    req.update_attributes(:label => "", :ord => 23)
  elsif(req.requirement.internal_id == 34)
    req.update_attributes(:label => "", :ord => 24)
  elsif(req.requirement.internal_id == 35)
    req.update_attributes(:label => "", :ord => 25)
  elsif(req.requirement.internal_id == 36)
    req.update_attributes(:label => "", :ord => 26)
  elsif(req.requirement.internal_id == 37)
    req.update_attributes(:label => "b", :ord => 27)
  elsif(req.requirement.internal_id == 38)
    req.update_attributes(:label => "11", :ord => 28)
  elsif(req.requirement.internal_id == 39)
    req.update_attributes(:label => "12", :ord => 29)
  elsif(req.requirement.internal_id == 40)
    req.update_attributes(:label => "a", :ord => 30)
  elsif(req.requirement.internal_id == 41)
    req.update_attributes(:label => "b", :ord => 31)
  elsif(req.requirement.internal_id == 42)
    req.update_attributes(:label => "", :ord => 32)
  elsif(req.requirement.internal_id == 43)
    req.update_attributes(:label => "", :ord => 33)
  elsif(req.requirement.internal_id == 44)
    req.update_attributes(:label => "", :ord => 34)
  elsif(req.requirement.internal_id == 45)
    req.update_attributes(:label => "", :ord => 35)
  elsif(req.requirement.internal_id == 46)
    req.update_attributes(:label => "", :ord => 36)
  elsif(req.requirement.internal_id == 47)
    req.update_attributes(:label => "", :ord => 37)
  elsif(req.requirement.internal_id == 48)
    req.update_attributes(:label => "", :ord => 38)
  elsif(req.requirement.internal_id == 49)
    req.update_attributes(:label => "13", :ord => 39)
  elsif(req.requirement.internal_id == 50)
    req.update_attributes(:label => "14", :ord => 40)
  elsif(req.requirement.internal_id == 51)
    req.update_attributes(:label => "15", :ord => 41)
  end
end
puts "Updated Tenderfoot ar's"
end

if Rank.find_by_name("Second Class").requirements.count == 0
  r = Requirement.create([
   {requirement:  "Do the following", internal_id: 42},
   {requirement:  "Demonstrate how a compass works and how to orient a map. Explain what map symbols mean.", internal_id: 43},
   {requirement:  "Using a compass and a map together, take a five-mile hike (or 10 miles by bike) approved by your adult leader and your parent or guardian.", internal_id: 44},
   {requirement:  "Discuss the principles of Leave No Trace.", internal_id: 45},
   {requirement:  "Do the following.", internal_id: 46},
   {requirement:  "Since joining, have participated in five separate troop/patrol activities (other than troop/patrol meetings), two of which included camping overnight.", internal_id: 47},
   {requirement:  "On one of these campouts, select your patrol site and sleep in a tent that you pitched. Explain what factors you should consider when choosing a patrol site and where to pitch a tent.", internal_id: 48},
   {requirement:  "Demonstrate proper care, sharpening, and use of the knife, saw, and ax, and describe when they should be used.", internal_id: 49},
   {requirement:  "Use the tools listed in requirement 3c to prepare tinder, kindling, and fuel for a cooking fire.", internal_id: 50},
   {requirement:  "Explain when it is appropriate to use a cooking fire. At an approved outdoor location and at an approved time, and using the tinder, kindling, and fuel wood from requirement 3d, demonstrate how to build a fire; light the fire, unless prohibited by local fire restrictions. After allowing the flames to burn safely for at least two minutes, safely extinguish the flames with minimal impact to the fire site.", internal_id: 51},
   {requirement:  "Explain when it is appropriate to use a lightweight stove or propane stove. Set up a lightweight stove or propane stove; light the stove, unless prohibited by local fire restrictions. Describe the safety procedures for using these types of stoves.", internal_id: 52},
   {requirement:  "On one campout, plan and cook one hot breakfast or lunch, selecting foods from the MyPlate food guide or the current USDA nutrition model. Explain the importance of good nutrition. Tell how to transport, store, and prepare the foods you selected.", internal_id: 53},
   {requirement:  "Participate in a flag ceremony for your school, religious institution, chartered organization, community, or troop activity. Explain to your leader what respect is due the flag of the United States.", internal_id: 54},
   {requirement:  "Participate in an approved (minimum of one hour) service project.", internal_id: 55},
   {requirement:  "Identify or show evidence of at least 10 kinds of wild animals (birds, mammals, reptiles, fish, mollusks) found in your community.", internal_id: 56},
   {requirement:  "Do the following.", internal_id: 57},
   {requirement:  "Show what to do for \"hurry\" cases of stopped breathing, serious bleeding, and ingested poisoning.", internal_id: 58},
   {requirement:  "Prepare a personal first aid kit to take with you on a hike.", internal_id: 59},
   {requirement:  "Demonstrate first aid for the following:", internal_id: 60},
   {requirement:  "Object in the eye", internal_id: 61},
   {requirement:  "Bite of a suspected rabid animal", internal_id: 62},
   {requirement:  "Puncture wounds from a splinter, nail, and fishhook", internal_id: 63},
   {requirement:  "Serious burns (partial thickness, or second-degree)", internal_id: 64},
   {requirement:  "Heat exhaustion", internal_id: 65},
   {requirement:  "Shock", internal_id: 66},
   {requirement:  "Heatstroke, dehydration, hypothermia, and hyperventilation", internal_id: 67},
   {requirement:  "Do the following.", internal_id: 68},
   {requirement:  "Tell what precautions must be taken for a safe swim.", internal_id: 69},
   {requirement:  "Demonstrate your ability to jump feetfirst into water over your head in depth, level off and swim 25 feet on the surface, stop, turn sharply, resume swimming, then return to your starting place.", internal_id: 70},
   {requirement:  "Demonstrate water rescue methods by reaching with your arm or leg, by reaching with a suitable object, and by throwing lines and objects. Explain why swimming rescues should not be attempted when a reaching or throwing rescue is possible, and explain why and how a rescue swimmer should avoid contact with the victim.", internal_id: 71},
   {requirement:  "Do the following.", internal_id: 72},
   {requirement:  "Participate in a school, community, or troop program on the dangers of using drugs, alcohol, and tobacco, and other practices that could be harmful to your health. Discuss your participation in the program with your family, and explain the dangers of substance addictions.", internal_id: 73},
   {requirement:  "Explain the three R's of personal safety and protection.", internal_id: 74},
   {requirement:  "Earn an amount of money agreed upon by you and your parent, then save at least 50 percent of that money.", internal_id: 75},
   {requirement:  "Demonstrate Scout spirit by living the Scout Oath and Scout Law in your everyday life. Discuss four specific examples (different from those used for Tenderfoot requirement 13) of how you have lived the points of the Scout Law in your daily life.", internal_id: 76},
   {requirement:  "Participate in a Scoutmaster conference.", internal_id: 77},
   {requirement:  "Complete your board of review.", internal_id: 78}
   ])
Rank.find_by_name("Second Class").requirements << r
puts "Second Class reqs created"

mb = Rank.find_by_name("Second Class").advancement_requirements.each do |req|
  if(req.requirement.internal_id == 42)
    req.update_attributes(:label => "1", :ord => 1)
  elsif(req.requirement.internal_id == 43)
    req.update_attributes(:label => "a", :ord => 2)
  elsif(req.requirement.internal_id == 44)
    req.update_attributes(:label => "b", :ord => 3)
  elsif(req.requirement.internal_id == 45)
    req.update_attributes(:label => "2", :ord => 4)
  elsif(req.requirement.internal_id == 46)
    req.update_attributes(:label => "3", :ord => 5)
  elsif(req.requirement.internal_id == 47)
    req.update_attributes(:label => "a", :ord => 6)
  elsif(req.requirement.internal_id == 48)
    req.update_attributes(:label => "b", :ord => 7)
  elsif(req.requirement.internal_id == 49)
    req.update_attributes(:label => "c", :ord => 8)
  elsif(req.requirement.internal_id == 50)
    req.update_attributes(:label => "d", :ord => 9)
  elsif(req.requirement.internal_id == 51)
    req.update_attributes(:label => "e", :ord => 10)
  elsif(req.requirement.internal_id == 52)
    req.update_attributes(:label => "f", :ord => 11)
  elsif(req.requirement.internal_id == 53)
    req.update_attributes(:label => "g", :ord => 12)
  elsif(req.requirement.internal_id == 54)
    req.update_attributes(:label => "4", :ord => 13)
  elsif(req.requirement.internal_id == 55)
    req.update_attributes(:label => "5", :ord => 14, :service_minutes => 60)
  elsif(req.requirement.internal_id == 56)
    req.update_attributes(:label => "6", :ord => 15)
  elsif(req.requirement.internal_id == 57)
    req.update_attributes(:label => "7", :ord => 16)
  elsif(req.requirement.internal_id == 58)
    req.update_attributes(:label => "a", :ord => 17)
  elsif(req.requirement.internal_id == 59)
    req.update_attributes(:label => "b", :ord => 18)
  elsif(req.requirement.internal_id == 60)
    req.update_attributes(:label => "c", :ord => 19)
  elsif(req.requirement.internal_id == 61)
    req.update_attributes(:label => "", :ord => 20)
  elsif(req.requirement.internal_id == 62)
    req.update_attributes(:label => "", :ord => 21)
  elsif(req.requirement.internal_id == 63)
    req.update_attributes(:label => "", :ord => 22)
  elsif(req.requirement.internal_id == 64)
    req.update_attributes(:label => "", :ord => 23)
  elsif(req.requirement.internal_id == 65)
    req.update_attributes(:label => "", :ord => 24)
  elsif(req.requirement.internal_id == 66)
    req.update_attributes(:label => "", :ord => 25)
  elsif(req.requirement.internal_id == 67)
    req.update_attributes(:label => "", :ord => 26)
  elsif(req.requirement.internal_id == 68)
    req.update_attributes(:label => "8", :ord => 27)
  elsif(req.requirement.internal_id == 69)
    req.update_attributes(:label => "a", :ord => 28)
  elsif(req.requirement.internal_id == 70)
    req.update_attributes(:label => "b", :ord => 29)
  elsif(req.requirement.internal_id == 71)
    req.update_attributes(:label => "c", :ord => 30)
  elsif(req.requirement.internal_id == 72)
    req.update_attributes(:label => "9", :ord => 31)
  elsif(req.requirement.internal_id == 73)
    req.update_attributes(:label => "a", :ord => 32)
  elsif(req.requirement.internal_id == 74)
    req.update_attributes(:label => "b", :ord => 33)
  elsif(req.requirement.internal_id == 75)
    req.update_attributes(:label => "10", :ord => 34)
  elsif(req.requirement.internal_id == 76)
    req.update_attributes(:label => "11", :ord => 35)
  elsif(req.requirement.internal_id == 77)
    req.update_attributes(:label => "12", :ord => 36)
  elsif(req.requirement.internal_id == 78)
    req.update_attributes(:label => "13", :ord => 37)
  end
end
puts "Updated Second Class ar's"
end

if Rank.find_by_name("First Class").requirements.count == 0
  r = Requirement.create([
    {requirement:  "Demonstrate how to find directions during the day and at night without using a compass.", internal_id: 79},
    {requirement:  "Using a map and compass, complete an orienteering course that covers at least one mile and requires measuring the height and/or width of designated items (tree, tower, canyon, ditch, etc.)", internal_id: 80},
    {requirement:  "Since joining, have participated in 10 separate troop/patrol activities (other than troop/patrol meetings), three of which included camping overnight. Demonstrate the principles of Leave No Trace on these outings.", internal_id: 81},
    {requirement:  "Help plan a patrol menu for one campout that includes at least one breakfast, one lunch, and one dinner, and that requires cooking at least two of the meals. Tell how the menu includes the foods from the MyPlate food guide or the current USDA nutrition model and meets nutritional needs.", internal_id: 82},
    {requirement:  "Do the following:", internal_id: 83},
    {requirement:  "Using the menu planned in requirement 4a, make a list showing the cost and food amounts needed to feed three or more boys and secure the ingredients.", internal_id: 84},
    {requirement:  "Tell which pans, utensils, and other gear will be needed to cook and serve these meals.", internal_id: 85},
    {requirement:  "Explain the procedures to follow in the safe handling and storage of fresh meats, dairy products, eggs, vegetables, and other perishable food products. Tell how to properly dispose of camp garbage, cans, plastic containers, and other rubbish.", internal_id: 86},
    {requirement:  "On one campout, serve as your patrol's cook. Supervise your assistant(s) in using a stove or building a cooking fire. Prepare the breakfast, lunch, and dinner planned in requirement 4a. Lead your patrol in saying grace at the meals and supervise cleanup.", internal_id: 87},
    {requirement:  "Visit and discuss with a selected individual approved by your leader (elected official, judge, attorney, civil servant, principal, teacher) your constitutional rights and obligations as a U.S. citizen.", internal_id: 88},
    {requirement:  "Identify or show evidence of at least 10 kinds of native plants found in your community.", internal_id: 89},
    {requirement:  "Do the following:", internal_id: 90},
    {requirement:  "Discuss when you should and should not use lashings. Then demonstrate tying the timber hitch and clove hitch and their use in square, shear, and diagonal lashings by joining two or more poles or staves together.", internal_id: 91},
    {requirement:  "Use lashing to make a useful camp gadget.", internal_id: 92},
    {requirement:  "Do the following:", internal_id: 93},
    {requirement:  "Demonstrate tying the bowline knot and describe several ways it can be used.", internal_id: 94},
    {requirement:  "Demonstrate bandages for a sprained ankle and for injuries on the head, the upper arm, and the collarbone.", internal_id: 95},
    {requirement:  "Show how to transport by yourself, and with one other person, a person:", internal_id: 96},
    {requirement:  "From a smoke-filled room", internal_id: 97},
    {requirement:  "With a sprained ankle, for at least 25 yards", internal_id: 98},
    {requirement:  "Tell the five most common signs of a heart attack. Explain the steps (procedures) in cardiopulmonary resuscitation (CPR).", internal_id: 99},
    {requirement:  "Do the following:", internal_id: 100},
    {requirement:  "Tell what precautions must be taken for a safe trip afloat.", internal_id: 101},
    {requirement:  "Successfully complete the BSA swimmer test.*", internal_id: 102},
    {requirement:  "With a helper and a practice victim, show a line rescue both as tender and as rescuer. (The practice victim should be approximately 30 feet from shore in deep water.)", internal_id: 103},
    {requirement:  "Tell someone who is eligible to join Boy Scouts, or an inactive Boy Scout, about your troop's activities. Invite him to a troop outing, activity, service project, or meeting. Tell him how to join, or encourage the inactive Boy Scout to become active.", internal_id: 104},
    {requirement:  "Describe the three things you should avoid doing related to the use of the Internet. Describe a cyberbully and how you should respond to one.", internal_id: 105},
    {requirement:  "Demonstrate Scout spirit by living the Scout Oath and Scout Law in your everyday life. Discuss four specific examples (different from those used in Tenderfoot requirement 13 and Second Class requirement 11) of how you have lived the points of the Scout Law in your daily life.", internal_id: 106},
    {requirement:  "Participate in a Scoutmaster conference.", internal_id: 107},
    {requirement:  "Complete your board of review.", internal_id: 108}
    ])
Rank.find_by_name("First Class").requirements << r
puts "First Class reqs created"

mb = Rank.find_by_name("First Class").advancement_requirements.each do |req|
  if(req.requirement.internal_id == 79)
    req.update_attributes(:label => "1", :ord => 1)
  elsif(req.requirement.internal_id == 80)
    req.update_attributes(:label => "2", :ord => 2)
  elsif(req.requirement.internal_id == 81)
    req.update_attributes(:label => "3", :ord => 3)
  elsif(req.requirement.internal_id == 82)
    req.update_attributes(:label => "4", :ord => 4)
  elsif(req.requirement.internal_id == 83)
    req.update_attributes(:label => "a", :ord => 5)
  elsif(req.requirement.internal_id == 84)
    req.update_attributes(:label => "b", :ord => 6)
  elsif(req.requirement.internal_id == 85)
    req.update_attributes(:label => "c", :ord => 7)
  elsif(req.requirement.internal_id == 86)
    req.update_attributes(:label => "d", :ord => 8)
  elsif(req.requirement.internal_id == 87)
    req.update_attributes(:label => "e", :ord => 9)
  elsif(req.requirement.internal_id == 88)
    req.update_attributes(:label => "5", :ord => 10)
  elsif(req.requirement.internal_id == 89)
    req.update_attributes(:label => "6", :ord => 11)
  elsif(req.requirement.internal_id == 90)
    req.update_attributes(:label => "7", :ord => 12)
  elsif(req.requirement.internal_id == 91)
    req.update_attributes(:label => "a", :ord => 13)
  elsif(req.requirement.internal_id == 92)
    req.update_attributes(:label => "b", :ord => 14)
  elsif(req.requirement.internal_id == 93)
    req.update_attributes(:label => "8", :ord => 15)
  elsif(req.requirement.internal_id == 94)
    req.update_attributes(:label => "a", :ord => 16)
  elsif(req.requirement.internal_id == 95)
    req.update_attributes(:label => "b", :ord => 17)
  elsif(req.requirement.internal_id == 96)
    req.update_attributes(:label => "c", :ord => 18)
  elsif(req.requirement.internal_id == 97)
    req.update_attributes(:label => "", :ord => 19)
  elsif(req.requirement.internal_id == 98)
    req.update_attributes(:label => "", :ord => 20)
  elsif(req.requirement.internal_id == 99)
    req.update_attributes(:label => "d", :ord => 21)
  elsif(req.requirement.internal_id == 100)
    req.update_attributes(:label => "9", :ord => 22)
  elsif(req.requirement.internal_id == 101)
    req.update_attributes(:label => "a", :ord => 23)
  elsif(req.requirement.internal_id == 102)
    req.update_attributes(:label => "b", :ord => 24)
  elsif(req.requirement.internal_id == 103)
    req.update_attributes(:label => "c", :ord => 25)
  elsif(req.requirement.internal_id == 104)
    req.update_attributes(:label => "10", :ord => 26)
  elsif(req.requirement.internal_id == 105)
    req.update_attributes(:label => "11", :ord => 26)
  elsif(req.requirement.internal_id == 106)
    req.update_attributes(:label => "12", :ord => 26)
  elsif(req.requirement.internal_id == 107)
    req.update_attributes(:label => "13", :ord => 26)
  elsif(req.requirement.internal_id == 108)
    req.update_attributes(:label => "14", :ord => 26)
  end
end
puts "Updated First Class ar's"
end

if Rank.find_by_name("Star").requirements.count == 0
  r = Requirement.create([
   {requirement:  "Be active in your unit (and patrol if you are in one) for at least four months as a First Class Scout.", internal_id: 109},
   {requirement:  "Demonstrate Scout spirit by living the Scout Oath and Scout Law in your everyday life.", internal_id: 110},
   {requirement:  "Earn six merit badges, including any four from the required list for Eagle.", children_merit_badge_count: 6, internal_id: 111},
   {requirement:  "While a First Class Scout, take part in service projects totaling at least six hours of work. These projects must be approved by your Scoutmaster.", internal_id: 112},
   {requirement:  "While a First Class Scout, serve actively in your unit for four months in one or more of the following positions of responsibility (or carry out a unit leader-assigned leadership project to help your unit):", internal_id: 113},
   {requirement:  "Take part in a Scoutmaster conference.", internal_id: 114},
   {requirement:  "Complete your board of review.", internal_id: 115},
   ])
Rank.find_by_name("Star").requirements << r
puts "Star reqs created"

mb = Rank.find_by_name("Star").advancement_requirements.each do |req|
  if(req.requirement.internal_id == 109)
    req.update_attributes(:label => "1", :ord => 1)
  elsif(req.requirement.internal_id == 110)
    req.update_attributes(:label => "2", :ord => 2)
  elsif(req.requirement.internal_id == 111)
    req.update_attributes(:label => "3", :ord => 3)
  elsif(req.requirement.internal_id == 112)
    req.update_attributes(:label => "4", :ord => 4, :service_minutes => 3113)
  elsif(req.requirement.internal_id == 60)
    req.update_attributes(:label => "5", :ord => 5)
  elsif(req.requirement.internal_id == 114)
    req.update_attributes(:label => "6", :ord => 6)
  elsif(req.requirement.internal_id == 115)
    req.update_attributes(:label => "7", :ord => 7)
  end
end
puts "Updated Star ar's"
end

if Rank.find_by_name("Life").requirements.count == 0
  r = Requirement.create([
   {requirement:  "Be active in your unit (and patrol if you are in one) for at least six months as a Star Scout.", internal_id: 116},
   {requirement:  "Demonstrate Scout spirit by living the Scout Oath and Scout Law in your everyday life.", internal_id: 117},
   {requirement:  "Earn five more merit badges (so that you have 11 in all), including any three more from the required list for Eagle.", children_merit_badge_count: 5, internal_id: 118},
   {requirement:  "While a Star Scout, take part in service projects totaling at least six hours of work. These projects must be approved by your Scoutmaster.", internal_id: 119},
   {requirement:  "While a Star Scout, serve actively in your unit for six months in one or more of the positions of responsibility listed in requirement 5 for Star Scout (or carry out a Scoutmaster-assigned leadership project to help the troop).", internal_id: 120},
   {requirement:  "While a Star Scout, use the EDGE method to teach another Scout (preferably younger than you) the skills from ONE of the following seven choices, so that he is prepared to pass those requirements to his unit leader's satisfaction.", internal_id: 121},
   {requirement:  "Second Class – 7a and 7c (first aid)", internal_id: 122},
   {requirement:  "Second Class – 1a (outdoor skills)", internal_id: 123},
   {requirement:  "Second Class – 3c, 3d, 3e, and 3f (cooking/camping)", internal_id: 124},
   {requirement:  "First Class – 8a, 8b, 8c, and 8d (first aid)", internal_id: 125},
   {requirement:  "First Class – 1, 7a, and 7b (outdoor skills)", internal_id: 126},
   {requirement:  "First Class – 4a, 4b, and 4d (cooking/camping)", internal_id: 127},
   {requirement:  "Three requirements from one of the required for Eagle merit badges, as approved by your unit leader.", internal_id: 128},
   {requirement:  "Take part in a Scoutmaster conference.", internal_id: 129},
   {requirement:  "Complete your board of review.", internal_id: 130},
   ])
Rank.find_by_name("Life").requirements << r
puts "Life reqs created"

mb = Rank.find_by_name("Life").advancement_requirements.each do |req|
  if(req.requirement.internal_id == 116)
    req.update_attributes(:label => "1", :ord => 1)
  elsif(req.requirement.internal_id == 117)
    req.update_attributes(:label => "2", :ord => 2)
  elsif(req.requirement.internal_id == 118)
    req.update_attributes(:label => "3", :ord => 3)
  elsif(req.requirement.internal_id == 119)
    req.update_attributes(:label => "4", :ord => 4, :service_minutes => 360)
  elsif(req.requirement.internal_id == 120)
    req.update_attributes(:label => "5", :ord => 5)
  elsif(req.requirement.internal_id == 121)
    req.update_attributes(:label => "6", :ord => 6)
  elsif(req.requirement.internal_id == 122)
    req.update_attributes(:label => "a", :ord => 7)
  elsif(req.requirement.internal_id == 123)
    req.update_attributes(:label => "b", :ord => 8)
  elsif(req.requirement.internal_id == 124)
    req.update_attributes(:label => "c", :ord => 9)
  elsif(req.requirement.internal_id == 125)
    req.update_attributes(:label => "d", :ord => 10)
  elsif(req.requirement.internal_id == 126)
    req.update_attributes(:label => "e", :ord => 11)
  elsif(req.requirement.internal_id == 127)
    req.update_attributes(:label => "f", :ord => 12)
  elsif(req.requirement.internal_id == 128)
    req.update_attributes(:label => "g", :ord => 13)
  elsif(req.requirement.internal_id == 129)
    req.update_attributes(:label => "7", :ord => 14)
  elsif(req.requirement.internal_id == 130)
    req.update_attributes(:label => "8`", :ord => 15)
  end
end
puts "Updated LIfe ar's"
end

if Rank.find_by_name("Eagle").requirements.count == 0
  r = Requirement.create([
   {requirement:  "Be active in your troop, team, crew, or ship for a period of at least six months after you have achieved the rank of Life Scout.", internal_id: 131},
   {requirement:  "Demonstrate that you live by the principles of the Scout Oath and Scout Law in your daily life. List on your Eagle Scout Rank Application the names of individuals who know you personally and would be willing to provide a recommendation on your behalf, including parents/guardians, religious, educational, and employer references.", internal_id: 132},
   {requirement:  "Earn a total of 21 merit badges (10 more than you already have), including the following:", children_merit_badge_count: 10, internal_id: 133},
   {requirement:  "While a Life Scout, serve actively in your unit for a period of six months in one or more of the following positions of responsibility. List only those positions served after your Life board of review date.", internal_id: 134},
   {requirement:  "While a Life Scout, plan, develop, and give leadership to others in a service project helpful to any religious institution, any school, or your community. (The project should benefit an organization other than Boy Scouting.) The project proposal must be approved by the organization benefiting from the effort, your unit leader and unit committee, and the council or district before you start. You must use the Eagle Scout Leadership Service Project Workbook, BSA publication No. 521-927, in meeting this requirement. (To learn more about the Eagle Scout service project, see the Guide To Advancement, topics 9.0.2.0 through 9.0.2.15.)", internal_id: 135},
   {requirement:  "Take part in a unit leader conference.", internal_id: 136},
   {requirement:  "Successfully complete an Eagle Scout board of review. In preparation for your board of review, prepare and attach to your Eagle Scout Rank Application a statement of your ambitions and life purpose and a listing of positions held in your religious institution, school, camp, community, or other organizations, during which you demonstrated leadership skills. Include honors and awards received during this service.", internal_id: 137}
   ])
Rank.find_by_name("Eagle").requirements << r
puts "Eagle reqs created"

mb = Rank.find_by_name("Eagle").advancement_requirements.each do |req|
  if(req.requirement.internal_id == 131)
    req.update_attributes(:label => "1", :ord => 1)
  elsif(req.requirement.internal_id == 132)
    req.update_attributes(:label => "2", :ord => 2)
  elsif(req.requirement.internal_id == 133)
    req.update_attributes(:label => "3", :ord => 3)
  elsif(req.requirement.internal_id == 134)
    req.update_attributes(:label => "4", :ord => 4)
  elsif(req.requirement.internal_id == 135)
    req.update_attributes(:label => "5", :ord => 5)
  elsif(req.requirement.internal_id == 136)
    req.update_attributes(:label => "6", :ord => 6)
  elsif(req.requirement.internal_id == 137)
    req.update_attributes(:label => "7", :ord => 7)
  end
end
puts "Updated Eagle ar's"
end

if MeritBadge.find_by_name("American Business").requirements.count == 0
  r = Requirement.create([
   {requirement: "Do the following:", internal_id: 138},
   {requirement: "Explain four features of the free enterprise system in the United States. Tell its benefits and responsibilities. Describe the difference between freedom and license. Tell how the Scout Oath and Law apply to business and free enterprise.", internal_id: 139},
   {requirement: "Describe the Industrial Revolution: Tell about the major developments that marked the start of the modern industrial era in the United States. Tell about five people who had a great influence on business or industry in the United States. Tell what each did.", internal_id: 140},
   {requirement: "Do the following:", internal_id: 141},
   {requirement: "Visit a bank. Talk with one of the officers or staff. Chart the organization of the bank. Show its relationship with other banks, business and industry.", internal_id: 142},
   {requirement: "Explain how changes in interest rates, taxes, and government spending affect the flow of money into or out of business and industry.", internal_id: 143},
   {requirement: "Explain how a proprietorship or partnership gets its capital. Discuss and explain four ways a corporation gets its capital.", internal_id: 144},
   {requirement: "Explain the place of profit in business.", internal_id: 145},
   {requirement: "Name five kinds of insurance useful to business. Describe their purposes.", internal_id: 146},
   {requirement: "Do the following:", internal_id: 147},
   {requirement: "Pick two or more stocks from the financial pages of a newspaper. Request the annual report or prospectus from one of the companies by writing, or visit its Web site (with your parent’s permission) to view the annual report online. Explain how a company’s annual report and prospectus can be used to help you manage your investments.", internal_id:148},
   {requirement: "Pretend to have bought $1,000 worth of the stocks from the company you wrote to in requirement 3a. Explain how you \"bought\" the stocks. Tell why you decided to \"buy\" stock in this company. Keep a weekly record for three months of the market value of your stocks. Show any dividends declared.", internal_id:149},
   {requirement: "Do ONE of the following:", internal_id:150},
   {requirement: "Draw an organizational chart of a typical central labor council.", internal_id:151},
   {requirement: "Describe automation, union shop, open shop, collective-bargaining agreements, shop steward, business agent, and union counselor.", internal_id:152},
   {requirement: "Explain the part played by four federal or state agencies in labor relations.", internal_id:153},
   {requirement: "Run a small business involving a product or service for at least three months. First find out the need for it. For example: a newspaper route, lawn mowing, sales of things you have made or grown. Keep records showing the costs, income, and profit or loss. Report:", internal_id:154},
   {requirement: "How service, friendliness, hard work, and salesmanship helped build your business.", internal_id:155},
   {requirement: "The benefits you and others received because you were in business.", internal_id:156},
   {requirement: "NOTE: Comparable 4-H, FFA, or Junior Achievement projects may be used for requirement 5.", internal_id:157},
   {requirement: "Do ONE of the following:", internal_id:158},
   {requirement: "Make an oral presentation to your Scout troop about an e-commerce company. Tell about the benefits and pitfalls of doing business online, and explain the differences between a retailer and an e-commerce company. In your presentation, explain the similarities a retailer and an e-commerce company might share.", internal_id:159},
   {requirement: "Choose three products from your local grocery store or mall and tell your merit badge counselor how the packaging could be improved upon so that it has less impact on the environment.", internal_id:160},
   {requirement: "Gather information from news sources and books about a current business leader. Write a two-page biography about this person or make a short presentation to your counselor. Focus on how this person became a successful business leader.", internal_id:161}
   ])
MeritBadge.find_by_name("American Business").requirements << r
puts "American Business reqs created"

mb = MeritBadge.find_by_name("American Business").advancement_requirements.each do |req|
  if(req.requirement.internal_id == 138)
    req.update_attributes(:label => "1", :ord => 1,  :children => "2#3", :children_count => 2)
  elsif(req.requirement.internal_id == 139)
    req.update_attributes(:label => "a", :ord => 2, :parent => 1)
  elsif(req.requirement.internal_id == 140)
    req.update_attributes(:label => "b", :ord => 3, :parent => 1)
  elsif(req.requirement.internal_id == 141)
    req.update_attributes(:label => "2", :ord => 4, :children => "5#6#7#8#9", :children_count => 5)
  elsif(req.requirement.internal_id == 142)
    req.update_attributes(:label => "a", :ord => 5, :parent => 4)
  elsif(req.requirement.internal_id == 143)
    req.update_attributes(:label => "b", :ord => 6, :parent => 4)
  elsif(req.requirement.internal_id == 144)
    req.update_attributes(:label => "c", :ord => 7, :parent => 4)
  elsif(req.requirement.internal_id == 145)
    req.update_attributes(:label => "d", :ord => 8, :parent => 4)
  elsif(req.requirement.internal_id == 146)
    req.update_attributes(:label => "e", :ord => 9, :parent => 4)
  elsif(req.requirement.internal_id == 147)
    req.update_attributes(:label => "3", :ord => 10, :children => "11#12", :children_count => 2)
  elsif(req.requirement.internal_id == 148)
    req.update_attributes(:label => "a", :ord => 11, :parent => 10)
  elsif(req.requirement.internal_id == 149)
    req.update_attributes(:label => "b", :ord => 12, :parent => 10)
  elsif(req.requirement.internal_id == 150)
    req.update_attributes(:label => "4", :ord => 13, :children => "14#15#16", :children_count => 1)
  elsif(req.requirement.internal_id == 151)
    req.update_attributes(:label => "a", :ord => 14, :parent => 13)
  elsif(req.requirement.internal_id == 152)
    req.update_attributes(:label => "b", :ord => 15, :parent => 13)
  elsif(req.requirement.internal_id == 153)
    req.update_attributes(:label => "c", :ord => 16, :parent => 13)
  elsif(req.requirement.internal_id == 154)
    req.update_attributes(:label => "5", :ord => 17, :children => "18#19", :children_count => 2)
  elsif(req.requirement.internal_id == 155)
    req.update_attributes(:label => "a", :ord => 18, :parent => 17)
  elsif(req.requirement.internal_id == 156)
    req.update_attributes(:label => "b", :ord => 19, :parent => 17)
  elsif(req.requirement.internal_id == 157)
    req.update_attributes(:label => "", :ord => 20, :children => "#")
  elsif(req.requirement.internal_id == 158)
    req.update_attributes(:label => "6", :ord => 21, :children => "22#23#24", :children_count => 1)
  elsif(req.requirement.internal_id == 159)
    req.update_attributes(:label => "a", :ord => 22, :parent => 21)
  elsif(req.requirement.internal_id == 160)
    req.update_attributes(:label => "b", :ord => 23, :parent => 21)
  elsif(req.requirement.internal_id == 161)
    req.update_attributes(:label => "c", :ord => 24, :parent => 21)
  end
end
puts "Updated American Business ar's"
end

if MeritBadge.find_by_name("American Cultures").requirements.count == 0
  r = Requirement.create([
   {requirement: "Do TWO of the following, choosing a different group for each:", internal_id: 162},
   {requirement:  "Go to a festival, celebration, or other event identified with one of the groups. Report on what you see and learn.", internal_id: 163},
   {requirement:  "Go to a place of worship, school, or other institution identified with one of the groups. Report on what you see and learn.", internal_id: 164},
   {requirement:  "Talk with a person from one of the groups about the heritage and traditions of the group. Report on what you learn.", internal_id: 165},
   {requirement:  "Learn a song, dance, poem, or story which is traditional to one group, and teach it to a group of your friends.", internal_id: 166},
   {requirement:  "Go to a library or museum to see a program or exhibit featuring one group's traditions. Report on what you see and learn.", internal_id: 167},
   {requirement:  "Imagine that one of the groups had always lived alone in a city or country to which no other groups ever came. Tell what you think the city or country might be like today. Now tell what you think it might be like if the three groups you chose lived there at the same time.", internal_id: 168},
   {requirement:  "Tell about some differences between the religions and social customs of the three groups. Tell about some ideas, or ways of doing things that are similar in the three groups.", internal_id: 169},
   {requirement:  "Tell about a contribution made to our country by three different people each from a different racial, ethnic, or religious background.", internal_id: 170},
   {requirement:  "Give a talk to your Scout unit or class at school on how people from different groups have gotten along together. Lead a discussion on what can be done to help various groups understand one another better.", internal_id: 171}
   ])
MeritBadge.find_by_name("American Cultures").requirements << r
puts "American Cultures reqs created"

mb = MeritBadge.find_by_name("American Cultures").advancement_requirements.each do |req|
  if(req.requirement.internal_id == 162)
    req.update_attributes(:label => "1", :ord => 1,  :children => "26#27#28#29#30", :children_count => 2)
  elsif(req.requirement.internal_id == 163)
    req.update_attributes(:label => "a", :ord => 2, :parent => 25)
  elsif(req.requirement.internal_id == 164)
    req.update_attributes(:label => "b", :ord => 3, :parent => 25)
  elsif(req.requirement.internal_id == 165)
    req.update_attributes(:label => "c", :ord => 4, :parent => 25)
  elsif(req.requirement.internal_id == 166)
    req.update_attributes(:label => "d", :ord => 5, :parent => 25)
  elsif(req.requirement.internal_id == 167)
    req.update_attributes(:label => "e", :ord => 6, :parent => 25)
  elsif(req.requirement.internal_id == 168)
    req.update_attributes(:label => "2", :ord => 7)
  elsif(req.requirement.internal_id == 169)
    req.update_attributes(:label => "3", :ord => 8)
  elsif(req.requirement.internal_id == 170)
    req.update_attributes(:label => "4", :ord => 9)
  elsif(req.requirement.internal_id == 171)
    req.update_attributes(:label => "5", :ord => 10)
  end
end
puts "Updated American Cultures ar's"
end

if MeritBadge.find_by_name("American Heritage").requirements.count == 0
  r = Requirement.create([
   {requirement:  "Read the Declaration of Independence. Pay close attention to the section that begins with \"We hold these truths to be self-evident\" and ends with \"to provide new Guards for future security.\" Rewrite that section in your own words, making it as easy to understand as possible. Then share your writing with your merit badge counselor and discuss the importance of the Declaration of Independence.", internal_id: 172},
   {requirement:  "Do TWO of the following:", internal_id: 173},
   {requirement:  "Select two individuals from American history, one a political leader (a president, senator, etc.) and the other a private citizen (a writer, religious leader, etc.). Find out about each person's accomplishments and compare the contributions each has made to America's heritage.", internal_id: 174},
   {requirement:  "With your counselor's approval, choose an organization that has promoted some type of positive change in American society. Find out why the organization believed this change was necessary and how it helped to accomplish the change. Discuss how this organization is related to events or situations from America's past.", internal_id: 175},
   {requirement:  "With your counselor's approval, interview two veterans of the U.S. military. Find out what their experiences were like. Ask the veterans what they believe they accomplished.", internal_id: 176},
   {requirement:  "With your counselor's approval, interview three people in your community of different ages and occupations. Ask these people what America means to them, what they think is special about this country, and what American traditions they feel are important to preserve.", internal_id: 177},
   {requirement: "Do the following:", internal_id: 178},
   {requirement:  "Select a topic that is currently in the news. Describe to your counselor what is happening. Explain how today's events are related to or affected by the events and values of America's past.", internal_id: 179},
   {requirement:  "For each of the following, describe its adoption, tell about any changes since its adoption, and explain how each one continues to influence Americans today: the flag, the Pledge of Allegiance, the seal, the motto, and the national anthem.", internal_id: 180},
   {requirement:  "Research your family's history. Find out how various events and situations in American history affected your family. Share what you find with your counselor. Tell why your family came to America.", internal_id: 181},
   {requirement:  "Do TWO of the following:", internal_id: 182},
   {requirement:  "Explain what is meant by the National Register of Historic Places. Describe how a property becomes eligible for listing. Make a map of your local area, marking the points of historical interest. Tell about any National Register properties in your area. Share the map with your counselor, and describe the historical points you have indicated.", internal_id: 183},
   {requirement:  "Research an event of historical importance that took place in or near your area. If possible, visit the place. Tell your counselor about the event and how it affected local history. Describe how the area looked then and what it now looks like.", internal_id: 184},
   {requirement:  "Find out when, why, and how your town or neighborhood started, and what ethnic, national, or racial groups played a part. Find out how the area has changed over the past 50 years and try to explain why.", internal_id: 185},
   {requirement:  "Take an active part in a program about an event or person in American history. Report to your counselor about the program, the part you took, and the subject.", internal_id: 186},
   {requirement:  "Visit a historic trail or walk in your area. After your visit, share with your counselor what you have learned. Discuss the importance of this location and explain why you think it might qualify for National Register listing.", internal_id: 187},
   {requirement:  "Do ONE of the following:", internal_id: 188},
   {requirement:  "Watch two motion pictures (with the approval and permission of your counselor and parent) that are set in some period of American history. Describe to your counselor how accurate each film is with regard to the historical events depicted and also with regard to the way the characters are portrayed.", internal_id: 189},
   {requirement:  "Read a biography (with your counselor's approval) of someone who has made a contribution to America's heritage. Tell some things you admire about this individual and some things you do not admire. Explain why you think this person has made a positive or a negative contribution to America's heritage.", internal_id: 190},
   {requirement:  "Listen to recordings of popular songs from various periods of American history. Share five of these songs with your counselor, and describe how each song reflects the way people felt about the period in which it was popular. If a recording is not available, have a copy of the lyrics available.", internal_id: 191},
   {requirement:  "Discuss with your counselor the career opportunities in American heritage. Pick one that interests you and explain how to prepare for this career. Discuss what education and training are required for this career.", internal_id: 192}
   ])
MeritBadge.find_by_name("American Heritage").requirements << r
puts "American Heritage reqs created"

mb = MeritBadge.find_by_name("American Heritage").advancement_requirements.each do |req|
  if(req.requirement.internal_id == 172)
    req.update_attributes(:label => "1", :ord => 1)
  elsif(req.requirement.internal_id == 173)
    req.update_attributes(:label => "2", :ord => 2,  :children => "37#38#39#40", :children_count => 2)
  elsif(req.requirement.internal_id == 174)
    req.update_attributes(:label => "a", :ord => 3,  :parent => 36)
  elsif(req.requirement.internal_id == 175)
    req.update_attributes(:label => "b", :ord => 4,  :parent => 36)
  elsif(req.requirement.internal_id == 176)
    req.update_attributes(:label => "c", :ord => 5,  :parent => 36)
  elsif(req.requirement.internal_id == 177)
    req.update_attributes(:label => "d", :ord => 6,  :parent => 36)
  elsif(req.requirement.internal_id == 178)
    req.update_attributes(:label => "3", :ord => 7,  :children => "42#43#44", :children_count => 3)
  elsif(req.requirement.internal_id == 179)
    req.update_attributes(:label => "a", :ord => 8,  :parent => 41)
  elsif(req.requirement.internal_id == 180)
    req.update_attributes(:label => "b", :ord => 9,  :parent => 41)
  elsif(req.requirement.internal_id == 181)
    req.update_attributes(:label => "c", :ord => 10,  :parent => 41)
  elsif(req.requirement.internal_id == 182)
    req.update_attributes(:label => "4", :ord => 11,  :children => "46#47#48#49#50", :children_count => 2)
  elsif(req.requirement.internal_id == 183)
    req.update_attributes(:label => "a", :ord => 12,  :parent => 45)
  elsif(req.requirement.internal_id == 184)
    req.update_attributes(:label => "b", :ord => 13,  :parent => 45)
  elsif(req.requirement.internal_id == 185)
    req.update_attributes(:label => "c", :ord => 14,  :parent => 45)
  elsif(req.requirement.internal_id == 186)
    req.update_attributes(:label => "d", :ord => 15,  :parent => 45)
  elsif(req.requirement.internal_id == 187)
    req.update_attributes(:label => "e", :ord => 16,  :parent => 45)
  elsif(req.requirement.internal_id == 188)
    req.update_attributes(:label => "5", :ord => 17,  :children => "52#53#54", :children_count => 1)
  elsif(req.requirement.internal_id == 189)
    req.update_attributes(:label => "a", :ord => 18,  :parent => 51)
  elsif(req.requirement.internal_id == 190)
    req.update_attributes(:label => "b", :ord => 19,  :parent => 51)
  elsif(req.requirement.internal_id == 191)
    req.update_attributes(:label => "c", :ord => 20,  :parent => 51)
  elsif(req.requirement.internal_id == 192)
    req.update_attributes(:label => "6", :ord => 21)
  end
end
puts "Updated American Heritage ar's"
end


# Scout.all.each do |scout|
#   rank = Rank.find_by_name("Star")
#   scout.advancements << rank
#   scout.requirements << rank.requirements
# end

# if Scout.all.count == 0
#   Scout.create([{
#                   first_name: "Jason",
#                   last_name: "Hamm",
#                   birthdate: "1975-03-24"
#   }])
# end

# if MeritBadge.find_by_name("American Cultures").requirements.count == 0
#   r = Requirement.create([
#                            {requirement:  "Tell about a contribution made to our country by three different people each from a different racial, ethnic, or religious background.", internal_id: 33},
#                            {requirement:  "Give a talk to your Scout unit or class at school on how people from different groups have gotten along together. Lead a discussion on what can be done to help various groups understand one another better.", internal_id: 34}
#   ])
#   MeritBadge.find_by_name("American Cultures").requirements << r
#   puts "American Cultures reqs created"

#   mb = MeritBadge.find_by_name("American Cultures").advancement_requirements.each do |req|
#     if(req.requirement.internal_id == 25)
#       req.update_attributes(:label => "1", :ord => 1,  :children => "26#27#28#29#30", :children_count => 2)
#     elsif(req.requirement.internal_id == 34)
#       req.update_attributes(:label => "5", :ord => 6)
#     end
#   end
#   puts "Updated American Cultures ar's"
# end