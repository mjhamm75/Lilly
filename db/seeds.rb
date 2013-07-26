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

# Scout.all.each do |scout|
#   if scout.ranks.count == 0
#     scout.ranks << Rank.all
#   end
#   puts "Ranks added to each scout"
# end

if MeritBadge.find_by_name("American Business").requirements.count == 0
  r = Requirement.create([
    {requirement: "Do the following:"},
    {requirement: "Explain four features of the free enterprise system in the United States. Tell its benefits and responsibilities. Describe the difference between freedom and license. Tell how the Scout Oath and Law apply to business and free enterprise."},
    {requirement: "Describe the Industrial Revolution: Tell about the major developments that marked the start of the modern industrial era in the United States. Tell about five people who had a great influence on business or industry in the United States. Tell what each did."},
    {requirement: "Visit a bank. Talk with one of the officers or staff. Chart the organization of the bank. Show its relationship with other banks, business and industry."},
    {requirement: "Explain how changes in interest rates, taxes, and government spending affect the flow of money into or out of business and industry."},
    {requirement: "Explain how a proprietorship or partnership gets its capital. Discuss and explain four ways a corporation gets its capital."},
    {requirement: "Explain the place of profit in business."},
    {requirement: "Name five kinds of insurance useful to business. Describe their purposes."},
    {requirement: "Pick two or more stocks from the financial pages of a newspaper. Request the annual report or prospectus from one of the companies by writing, or visit its Web site (with your parent’s permission) to view the annual report online. Explain how a company’s annual report and prospectus can be used to help you manage your investments."},
    {requirement: "Pretend to have bought $1,000 worth of the stocks from the company you wrote to in requirement 3a. Explain how you \"bought\" the stocks. Tell why you decided to \"buy\" stock in this company. Keep a weekly record for three months of the market value of your stocks. Show any dividends declared."},
    {requirement: "Do ONE of the following:"},
    {requirement: "Draw an organizational chart of a typical central labor council."},
    {requirement: "Describe automation, union shop, open shop, collective-bargaining agreements, shop steward, business agent, and union counselor."},
    {requirement: "Explain the part played by four federal or state agencies in labor relations."},
    {requirement: "Run a small business involving a product or service for at least three months. First find out the need for it. For example: a newspaper route, lawn mowing, sales of things you have made or grown. Keep records showing the costs, income, and profit or loss. Report:"},
    {requirement: "How service, friendliness, hard work, and salesmanship helped build your business."},
    {requirement: "The benefits you and others received because you were in business."},
    {requirement: "NOTE: Comparable 4-H, FFA, or Junior Achievement projects may be used for requirement 5."},
    {requirement: "Make an oral presentation to your Scout troop about an e-commerce company. Tell about the benefits and pitfalls of doing business online, and explain the differences between a retailer and an e-commerce company. In your presentation, explain the similarities a retailer and an e-commerce company might share."},
    {requirement: "Choose three products from your local grocery store or mall and tell your merit badge counselor how the packaging could be improved upon so that it has less impact on the environment."},
    {requirement: "Gather information from news sources and books about a current business leader. Write a two-page biography about this person or make a short presentation to your counselor. Focus on how this person became a successful business leader."}
    ])
    MeritBadge.find_by_name("American Business").requirements << r
    puts "American Business reqs created"
end