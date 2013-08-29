# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Scout.all.count == 0
  Scout.create([{
                  first_name: "Jason",
                  last_name: "Hamm",
                  birthdate: "1975-03-24"
  }])
end

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
                {name: "LIfe" },
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

if MeritBadge.find_by_name("American Business").requirements.count == 0
  r = Requirement.create([
                           {requirement: "Do the following:", internal_id: 1},
                           {requirement: "Explain four features of the free enterprise system in the United States. Tell its benefits and responsibilities. Describe the difference between freedom and license. Tell how the Scout Oath and Law apply to business and free enterprise.", internal_id: 2},
                           {requirement: "Describe the Industrial Revolution: Tell about the major developments that marked the start of the modern industrial era in the United States. Tell about five people who had a great influence on business or industry in the United States. Tell what each did.", internal_id: 3},
                           {requirement: "Do the following:", internal_id: 4},
                           {requirement: "Visit a bank. Talk with one of the officers or staff. Chart the organization of the bank. Show its relationship with other banks, business and industry.", internal_id: 5},
                           {requirement: "Explain how changes in interest rates, taxes, and government spending affect the flow of money into or out of business and industry.", internal_id: 6},
                           {requirement: "Explain how a proprietorship or partnership gets its capital. Discuss and explain four ways a corporation gets its capital.", internal_id: 7},
                           {requirement: "Explain the place of profit in business.", internal_id: 8},
                           {requirement: "Name five kinds of insurance useful to business. Describe their purposes.", internal_id: 9},
                           {requirement: "Do the following:", internal_id: 10},
                           {requirement: "Pick two or more stocks from the financial pages of a newspaper. Request the annual report or prospectus from one of the companies by writing, or visit its Web site (with your parent’s permission) to view the annual report online. Explain how a company’s annual report and prospectus can be used to help you manage your investments.", internal_id:11},
                           {requirement: "Pretend to have bought $1,000 worth of the stocks from the company you wrote to in requirement 3a. Explain how you \"bought\" the stocks. Tell why you decided to \"buy\" stock in this company. Keep a weekly record for three months of the market value of your stocks. Show any dividends declared.", internal_id:12},
                           {requirement: "Do ONE of the following:", internal_id:13},
                           {requirement: "Draw an organizational chart of a typical central labor council.", internal_id:14},
                           {requirement: "Describe automation, union shop, open shop, collective-bargaining agreements, shop steward, business agent, and union counselor.", internal_id:15},
                           {requirement: "Explain the part played by four federal or state agencies in labor relations.", internal_id:16},
                           {requirement: "Run a small business involving a product or service for at least three months. First find out the need for it. For example: a newspaper route, lawn mowing, sales of things you have made or grown. Keep records showing the costs, income, and profit or loss. Report:", internal_id:17},
                           {requirement: "How service, friendliness, hard work, and salesmanship helped build your business.", internal_id:18},
                           {requirement: "The benefits you and others received because you were in business.", internal_id:19},
                           {requirement: "NOTE: Comparable 4-H, FFA, or Junior Achievement projects may be used for requirement 5.", internal_id:20},
                           {requirement: "Do ONE of the following:", internal_id:21},
                           {requirement: "Make an oral presentation to your Scout troop about an e-commerce company. Tell about the benefits and pitfalls of doing business online, and explain the differences between a retailer and an e-commerce company. In your presentation, explain the similarities a retailer and an e-commerce company might share.", internal_id:22},
                           {requirement: "Choose three products from your local grocery store or mall and tell your merit badge counselor how the packaging could be improved upon so that it has less impact on the environment.", internal_id:23},
                           {requirement: "Gather information from news sources and books about a current business leader. Write a two-page biography about this person or make a short presentation to your counselor. Focus on how this person became a successful business leader.", internal_id:24}
  ])
  MeritBadge.find_by_name("American Business").requirements << r
  puts "American Business reqs created"

  mb = MeritBadge.find_by_name("American Business").advancement_requirements.each do |req|
    if(req.requirement.internal_id == 1)
      req.update_attributes(:label => "1", :ord => 1,  :children => "2#3", :children_count => 2)
    elsif(req.requirement.internal_id == 2)
      req.update_attributes(:label => "a", :ord => 2, :parent => 1)
    elsif(req.requirement.internal_id == 3)
      req.update_attributes(:label => "b", :ord => 3, :parent => 1)
    elsif(req.requirement.internal_id == 4)
      req.update_attributes(:label => "2", :ord => 4, :children => "5#6#7#8#9", :children_count => 5)
    elsif(req.requirement.internal_id == 5)
      req.update_attributes(:label => "a", :ord => 5, :parent => 4)
    elsif(req.requirement.internal_id == 6)
      req.update_attributes(:label => "b", :ord => 6, :parent => 4)
    elsif(req.requirement.internal_id == 7)
      req.update_attributes(:label => "c", :ord => 7, :parent => 4)
    elsif(req.requirement.internal_id == 8)
      req.update_attributes(:label => "d", :ord => 8, :parent => 4)
    elsif(req.requirement.internal_id == 9)
      req.update_attributes(:label => "e", :ord => 9, :parent => 4)
    elsif(req.requirement.internal_id == 10)
      req.update_attributes(:label => "3", :ord => 10, :children => "11#12", :children_count => 2)
    elsif(req.requirement.internal_id == 11)
      req.update_attributes(:label => "a", :ord => 11, :parent => 10)
    elsif(req.requirement.internal_id == 12)
      req.update_attributes(:label => "b", :ord => 12, :parent => 10)
    elsif(req.requirement.internal_id == 13)
      req.update_attributes(:label => "4", :ord => 13, :children => "14#15#16", :children_count => 1)
    elsif(req.requirement.internal_id == 14)
      req.update_attributes(:label => "a", :ord => 14, :parent => 13)
    elsif(req.requirement.internal_id == 15)
      req.update_attributes(:label => "b", :ord => 15, :parent => 13)
    elsif(req.requirement.internal_id == 16)
      req.update_attributes(:label => "c", :ord => 16, :parent => 13)
    elsif(req.requirement.internal_id == 17)
      req.update_attributes(:label => "5", :ord => 17, :children => "18#19", :children_count => 2)
    elsif(req.requirement.internal_id == 18)
      req.update_attributes(:label => "a", :ord => 18, :parent => 17)
    elsif(req.requirement.internal_id == 19)
      req.update_attributes(:label => "b", :ord => 19, :parent => 17)
    elsif(req.requirement.internal_id == 20)
      req.update_attributes(:label => "", :ord => 20, :children => "#")
    elsif(req.requirement.internal_id == 21)
      req.update_attributes(:label => "6", :ord => 21, :children => "22#23#24", :children_count => 1)
    elsif(req.requirement.internal_id == 22)
      req.update_attributes(:label => "a", :ord => 22, :parent => 21)
    elsif(req.requirement.internal_id == 23)
      req.update_attributes(:label => "b", :ord => 23, :parent => 21)
    elsif(req.requirement.internal_id == 24)
      req.update_attributes(:label => "c", :ord => 24, :parent => 21)
    end
  end
  puts "Updated American Business ar's"
end