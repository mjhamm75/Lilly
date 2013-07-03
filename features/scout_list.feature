Feature: Scout list
  In order to help scouts gain Eagle
  A scoutmaster
  Should see be able to manage them through a list

  Scenario: View a list of scouts
    Given I am on the scout list page
    And I create a scout named Tristan McGraw
    And his birthday is 15 years ago
    Then I should see him in the list
    And his age should be 15