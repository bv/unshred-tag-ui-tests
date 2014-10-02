Feature: Warm welcome as a login selection option

  Scenario: As a volunteer user I want to have an option
  to sign in by means of social network profiles

    Given I am on the 'Warm Welcome' page
    Then there are sign in options:
      | Facebook  |
      | Twitter   |
      | Gmail     |
      | Vkontakte |
