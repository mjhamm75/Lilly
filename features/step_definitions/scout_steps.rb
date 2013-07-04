require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given /^I am on the scout list page$/ do
  visit scouts_path
end

Given /^I create a scout named (.*) (.*)$/ do |first_name, last_name|
  @scout = Scout.create!(:first_name => first_name, :last_name => last_name)
end

Given /^his birthday is (\d+) years ago$/ do |birthday|
  @scout.update_attribute(:birthdate, 15.years.ago)
end

Then /^I should see the scout on the list$/ do
  visit scouts_path
  find('td', text: @scout.first_name)
end

Then /^his age should be ([0-9]+)$/ do |age|
  @scout.age.should eql age.to_i
end

Given /^I click the (.+) button$/ do |button|
  click_button(button)
end

Given /^I add new scout$/  do
  @scout = FactoryGirl.create(:scout)
  fill_in(:first_name, :with => @scout.first_name)
  fill_in(:last_name, :with => @scout.last_name)
  fill_in(:birthdate, :with => 12.years.ago)
  click_button("Add")
end
