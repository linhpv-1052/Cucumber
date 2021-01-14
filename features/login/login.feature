Feature: Login Action

  Scenario: Login with an <user> account
    Given the "<user>" navigates to the Login page
    When the "<user>" click on the Login button
    Then the require message is displayed for "<user>"
    When the "<user>" enters username and password
    Then the successful login message is displayed for "<user>"
    When the "<user>" enters incorrect username and password
    Then the fail login message is displayed for "<user>"

      Examples:
      | user |
      | admin |
      | merchant |
      | affiliate |
