Feature: Single scout
  In order to manage a single scout
  A scoutmaster
  Should be able to manage the scout with this summary page

  Background:
  Given I create a scout named Tristan McGraw

  @javascript
  Scenario: Go to scout detail page
    And I click on the his row
    Then I go to that scouts detail page

  Scenario: View Advancements and Merit Badges
    Given I am on his detail page
    Then I should see an Advancements Section
    And I should see a Merit Badges Section

  @javascript
  Scenario: Delete scout
    And I click on the his row
    And I go to that scouts detail page
    And I click the Remove Scout button
    And I confirm the popup
    Then the scout will not be on the main list