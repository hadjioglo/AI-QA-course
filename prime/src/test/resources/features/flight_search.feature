Feature: Flight Search
  Scenario: Search for a flight from New York to London and verify prices
    Given I am on the PrimeSky home page
    When I search for a flight from "New York" to "London" with dates "15 Aug - 22 Sep"
    Then I should see prices displayed
