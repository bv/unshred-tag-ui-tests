Feature: Instructions for user before start

  Scenario: As a volunteer user I want to see instructions about
  how to use the tagging workspace. Once I am logged in, a dialogue
  will appear with proper instructions.

    Given I am on the 'Warm Welcome' page
    And I am logged in as a 'user'
    When Instructions dialogue appears
    And I dismiss the instructions dialogue
