require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given /^I am on the scout list page$/ do
  visit scouts_path
end

Given /^I create a scout named (.*) (.*)$/ do |first_name, last_name|
  @scout = Scout.create!(:first_name => first_name, :last_name => last_name, :birthdate => 15.years.ago)
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

Given /^I click on the his row$/ do
  visit scouts_path
  find('tr', text: "Tristan").click
end

Then /^I go to that scouts detail page$/ do
  find('h1', text: "Tristan")
end

Given /^I confirm the popup$/ do
  page.driver.browser.switch_to.alert.accept
end

Then /^the scout will not be on the main list$/ do
  page.should_not have_content @scout.first_name
end

Given /^I am on his detail page$/ do
  visit edit_scout_path(@scout)
end

Then /^I should see (?:an|a) (.*) Section$/ do |section|
  find('h2', text: section)
end

Then(/^show me the response$/) do
  puts page.body.inspect
end

Then /^the (.*) Section should be empty$/ do |section|
  div = find('#' + phraseToCamelCase(section.downcase))
  div.find('.empty')
end

When /^he starts the (.*) merit badge$/ do |badge|
  pending # express the regexp above with the code you wish you had
end

Then /^the Merit Badge section will contain the (.*) merit badge$/  do |badge|
  pending # express the regexp above with the code you wish you had
end