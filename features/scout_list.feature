Feature: Scout list
  In order to help scouts gain Eagle
  A scoutmaster
  Should see be able to manage them through a list

  Background: Go to the scout list
    Given I am on the scout list page

  Scenario: View a list of scouts
    And I create a scout named Tristan McGraw
    And his birthday is 15 years ago
    Then I should see the scout on the list
    And his age should be 15

  @javascript
  Scenario: Add a new scout
    And I click the Add Scout button
    And I add new scout
    Then I should see the scout on the list

  @javascript
  Scenario: Go to scout detail page
    And I create a scout named Tristan McGraw
    And I click on the his row
    Then I go to that scouts detail page

  @javascript
  Scenario: Delete scout
    And I create a scout named Tristan McGraw
    And I click on the his row
    And I go to that scouts detail page
    And I click the Remove Scout button
    And I confirm the popup
    Then the scout will not be on the main list