FactoryGirl.define do
  factory :scout do |f|
    f.first_name "Tristan"
    f.last_name "McGraw"
    f.birthdate 15.years.ago
  end
end