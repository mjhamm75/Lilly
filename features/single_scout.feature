Feature: Single scout
  In order to manage a single scout
  A scoutmaster
  Should be able to manage the scout with this summary page

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