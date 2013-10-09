# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :service_hour do
    title "MyString"
    place "MyString"
    minutes 1
    date "2013-10-08"
  end
end
