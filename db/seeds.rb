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

if MeritBadge.find_by_name("American Cultures").requirements.count == 0
  r = Requirement.create([
                           {requirement: "Do TWO of the following, choosing a different group for each:", internal_id: 25},
                           {requirement:  "Go to a festival, celebration, or other event identified with one of the groups. Report on what you see and learn.", internal_id: 26},
                           {requirement:  "Go to a place of worship, school, or other institution identified with one of the groups. Report on what you see and learn.", internal_id: 27},
                           {requirement:  "Talk with a person from one of the groups about the heritage and traditions of the group. Report on what you learn.", internal_id: 28},
                           {requirement:  "Learn a song, dance, poem, or story which is traditional to one group, and teach it to a group of your friends.", internal_id: 29},
                           {requirement:  "Go to a library or museum to see a program or exhibit featuring one group's traditions. Report on what you see and learn.", internal_id: 30},
                           {requirement:  "Imagine that one of the groups had always lived alone in a city or country to which no other groups ever came. Tell what you think the city or country might be like today. Now tell what you think it might be like if the three groups you chose lived there at the same time.", internal_id: 31},
                           {requirement:  "Tell about some differences between the religions and social customs of the three groups. Tell about some ideas, or ways of doing things that are similar in the three groups.", internal_id: 32},
                           {requirement:  "Tell about a contribution made to our country by three different people each from a different racial, ethnic, or religious background.", internal_id: 33},
                           {requirement:  "Give a talk to your Scout unit or class at school on how people from different groups have gotten along together. Lead a discussion on what can be done to help various groups understand one another better.", internal_id: 34}
  ])
  MeritBadge.find_by_name("American Cultures").requirements << r
  puts "American Cultures reqs created"

  mb = MeritBadge.find_by_name("American Cultures").advancement_requirements.each do |req|
    if(req.requirement.internal_id == 25)
      req.update_attributes(:label => "1", :ord => 1,  :children => "26#27#28#29#30", :children_count => 2)
    elsif(req.requirement.internal_id == 26)
      req.update_attributes(:label => "a", :ord => 2, :parent => 25)
    elsif(req.requirement.internal_id == 27)
      req.update_attributes(:label => "b", :ord => 3, :parent => 25)
    elsif(req.requirement.internal_id == 28)
      req.update_attributes(:label => "c", :ord => 4, :parent => 25)
    elsif(req.requirement.internal_id == 29)
      req.update_attributes(:label => "d", :ord => 5, :parent => 25)
    elsif(req.requirement.internal_id == 30)
      req.update_attributes(:label => "e", :ord => 6, :parent => 25)
    elsif(req.requirement.internal_id == 31)
      req.update_attributes(:label => "2", :ord => 7)
    elsif(req.requirement.internal_id == 32)
      req.update_attributes(:label => "3", :ord => 8)
    elsif(req.requirement.internal_id == 33)
      req.update_attributes(:label => "4", :ord => 9)
    elsif(req.requirement.internal_id == 34)
      req.update_attributes(:label => "5", :ord => 10)
    end
  end
  puts "Updated American Cultures ar's"
end

if MeritBadge.find_by_name("American Heritage").requirements.count == 0
  r = Requirement.create([
                           {requirement:  "Read the Declaration of Independence. Pay close attention to the section that begins with \"We hold these truths to be self-evident\" and ends with \"to provide new Guards for future security.\" Rewrite that section in your own words, making it as easy to understand as possible. Then share your writing with your merit badge counselor and discuss the importance of the Declaration of Independence.", internal_id: 35},
                           {requirement:  "Do TWO of the following:", internal_id: 36},
                           {requirement:  "Select two individuals from American history, one a political leader (a president, senator, etc.) and the other a private citizen (a writer, religious leader, etc.). Find out about each person's accomplishments and compare the contributions each has made to America's heritage.", internal_id: 37},
                           {requirement:  "With your counselor's approval, choose an organization that has promoted some type of positive change in American society. Find out why the organization believed this change was necessary and how it helped to accomplish the change. Discuss how this organization is related to events or situations from America's past.", internal_id: 38},
                           {requirement:  "With your counselor's approval, interview two veterans of the U.S. military. Find out what their experiences were like. Ask the veterans what they believe they accomplished.", internal_id: 39},
                           {requirement:  "With your counselor's approval, interview three people in your community of different ages and occupations. Ask these people what America means to them, what they think is special about this country, and what American traditions they feel are important to preserve.", internal_id: 40},
                           {requirement: "Do the following:", internal_id: 41},
                           {requirement:  "Select a topic that is currently in the news. Describe to your counselor what is happening. Explain how today's events are related to or affected by the events and values of America's past.", internal_id: 42},
                           {requirement:  "For each of the following, describe its adoption, tell about any changes since its adoption, and explain how each one continues to influence Americans today: the flag, the Pledge of Allegiance, the seal, the motto, and the national anthem.", internal_id: 43},
                           {requirement:  "Research your family's history. Find out how various events and situations in American history affected your family. Share what you find with your counselor. Tell why your family came to America.", internal_id: 44},
                           {requirement:  "Do TWO of the following:", internal_id: 45},
                           {requirement:  "Explain what is meant by the National Register of Historic Places. Describe how a property becomes eligible for listing. Make a map of your local area, marking the points of historical interest. Tell about any National Register properties in your area. Share the map with your counselor, and describe the historical points you have indicated.", internal_id: 46},
                           {requirement:  "Research an event of historical importance that took place in or near your area. If possible, visit the place. Tell your counselor about the event and how it affected local history. Describe how the area looked then and what it now looks like.", internal_id: 47},
                           {requirement:  "Find out when, why, and how your town or neighborhood started, and what ethnic, national, or racial groups played a part. Find out how the area has changed over the past 50 years and try to explain why.", internal_id: 48},
                           {requirement:  "Take an active part in a program about an event or person in American history. Report to your counselor about the program, the part you took, and the subject.", internal_id: 49},
                           {requirement:  "Visit a historic trail or walk in your area. After your visit, share with your counselor what you have learned. Discuss the importance of this location and explain why you think it might qualify for National Register listing.", internal_id: 50},
                           {requirement:  "Do ONE of the following:", internal_id: 51},
                           {requirement:  "Watch two motion pictures (with the approval and permission of your counselor and parent) that are set in some period of American history. Describe to your counselor how accurate each film is with regard to the historical events depicted and also with regard to the way the characters are portrayed.", internal_id: 52},
                           {requirement:  "Read a biography (with your counselor's approval) of someone who has made a contribution to America's heritage. Tell some things you admire about this individual and some things you do not admire. Explain why you think this person has made a positive or a negative contribution to America's heritage.", internal_id: 53},
                           {requirement:  "Listen to recordings of popular songs from various periods of American history. Share five of these songs with your counselor, and describe how each song reflects the way people felt about the period in which it was popular. If a recording is not available, have a copy of the lyrics available.", internal_id: 54},
                           {requirement:  "Discuss with your counselor the career opportunities in American heritage. Pick one that interests you and explain how to prepare for this career. Discuss what education and training are required for this career.", internal_id: 55}
  ])
  MeritBadge.find_by_name("American Heritage").requirements << r
  puts "American Heritage reqs created"

  mb = MeritBadge.find_by_name("American Heritage").advancement_requirements.each do |req|
    if(req.requirement.internal_id == 35)
      req.update_attributes(:label => "1", :ord => 1)
    elsif(req.requirement.internal_id == 36)
      req.update_attributes(:label => "2", :ord => 2,  :children => "37#38#39#40", :children_count => 2)
    elsif(req.requirement.internal_id == 37)
      req.update_attributes(:label => "a", :ord => 3,  :parent => 36)
    elsif(req.requirement.internal_id == 38)
      req.update_attributes(:label => "b", :ord => 4,  :parent => 36)
    elsif(req.requirement.internal_id == 39)
      req.update_attributes(:label => "c", :ord => 5,  :parent => 36)
    elsif(req.requirement.internal_id == 40)
      req.update_attributes(:label => "d", :ord => 6,  :parent => 36)
    elsif(req.requirement.internal_id == 41)
      req.update_attributes(:label => "3", :ord => 7,  :children => "42#43#44", :children_count => 3)
    elsif(req.requirement.internal_id == 42)
      req.update_attributes(:label => "a", :ord => 8,  :parent => 41)
    elsif(req.requirement.internal_id == 43)
      req.update_attributes(:label => "b", :ord => 9,  :parent => 41)
    elsif(req.requirement.internal_id == 44)
      req.update_attributes(:label => "c", :ord => 10,  :parent => 41)
    elsif(req.requirement.internal_id == 45)
      req.update_attributes(:label => "4", :ord => 11,  :children => "46#47#48#49#50", :children_count => 2)
    elsif(req.requirement.internal_id == 46)
      req.update_attributes(:label => "a", :ord => 12,  :parent => 45)
    elsif(req.requirement.internal_id == 47)
      req.update_attributes(:label => "b", :ord => 13,  :parent => 45)
    elsif(req.requirement.internal_id == 48)
      req.update_attributes(:label => "c", :ord => 14,  :parent => 45)
    elsif(req.requirement.internal_id == 49)
      req.update_attributes(:label => "d", :ord => 15,  :parent => 45)
    elsif(req.requirement.internal_id == 50)
      req.update_attributes(:label => "e", :ord => 16,  :parent => 45)
    elsif(req.requirement.internal_id == 51)
      req.update_attributes(:label => "5", :ord => 17,  :children => "52#53#54", :children_count => 1)
    elsif(req.requirement.internal_id == 52)
      req.update_attributes(:label => "a", :ord => 18,  :parent => 51)
    elsif(req.requirement.internal_id == 53)
      req.update_attributes(:label => "b", :ord => 19,  :parent => 51)
    elsif(req.requirement.internal_id == 54)
      req.update_attributes(:label => "c", :ord => 20,  :parent => 51)
    elsif(req.requirement.internal_id == 55)
      req.update_attributes(:label => "6", :ord => 21)
    end
  end
  puts "Updated American Heritage ar's"
end

if Rank.find_by_name("Star").requirements.count == 0
  r = Requirement.create([
                           {requirement:  "Be active in your unit (and patrol if you are in one) for at least four months as a First Class Scout.", internal_id: 56},
                           {requirement:  "Demonstrate Scout spirit by living the Scout Oath and Scout Law in your everyday life.", internal_id: 57},
                           {requirement:  "Earn six merit badges, including any four from the required list for Eagle.", internal_id: 58},
                           {requirement:  "While a First Class Scout, take part in service projects totaling at least six hours of work. These projects must be approved by your Scoutmaster.", internal_id: 59},
                           {requirement:  "While a First Class Scout, serve actively in your unit for four months in one or more of the following positions of responsibility (or carry out a unit leader-assigned leadership project to help your unit):", internal_id: 60},
                           {requirement:  "Take part in a Scoutmaster conference.", internal_id: 61},
                           {requirement:  "Complete your board of review.", internal_id: 62},
  ])
  Rank.find_by_name("Star").requirements << r
  puts "Star reqs created"

  mb = Rank.find_by_name("Star").advancement_requirements.each do |req|
    if(req.requirement.internal_id == 56)
      req.update_attributes(:label => "1", :ord => 1)
    elsif(req.requirement.internal_id == 57)
      req.update_attributes(:label => "2", :ord => 2)
    elsif(req.requirement.internal_id == 58)
      req.update_attributes(:label => "3", :ord => 3)
    elsif(req.requirement.internal_id == 59)
      req.update_attributes(:label => "4", :ord => 4)
    elsif(req.requirement.internal_id == 60)
      req.update_attributes(:label => "5", :ord => 5)
    elsif(req.requirement.internal_id == 61)
      req.update_attributes(:label => "6", :ord => 6)
    elsif(req.requirement.internal_id == 62)
      req.update_attributes(:label => "7", :ord => 7)
    end
  end
  puts "Updated Star ar's"
end

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
