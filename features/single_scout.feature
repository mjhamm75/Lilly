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

  @javascript
  Scenario: Delete scout
    And I click on the his row
    And I go to that scouts detail page
    And I click the Remove Scout button
    And I confirm the popup
    Then the scout will not be on the main list

  Scenario: View Advancements and Merit Badges
    Given I am on his detail page
    Then I should see an Advancements Section
    And I should see a Merit Badges Section

  Scenario: Advancements should initially be empty
    Given I am on his detail page
    Then I should see an Advancements Section
    And the Advancements Section should be empty

  Scenario: Advancements should initially be empty
    Given I am on his detail page
    And I should see a Merit Badges Section
    And the Merit Badges Section should be empty

  Scenario: After the scout receives a merit badge it will appear on merit badge list
    Given I am on his detail page
    When he starts the Swimming merit badge
    Then the Merit Badge section will contain the Swimming merit badge