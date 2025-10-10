# PrimeSky Flight Search - Test Analysis and Cases

## Clarity Check

1. What is the expected behavior when clicking the "SEARCH FLIGHT" button with valid inputs?
2. Are there any specific validation rules for date ranges (e.g., minimum advance booking, maximum future date)?
3. What happens when the "From" and "To" locations are the same?
4. Is there a maximum number of travelers allowed per booking?
5. Are there different business rules for different travel classes?
6. What should happen if no flights are available for the selected criteria?
7. Is user authentication required before searching or only before booking?
8. Are there any age restrictions or requirements for different traveler types (if applicable)?
9. What is the expected response time for flight search results?
10. Are there accessibility requirements for keyboard navigation and screen readers?

*Assumptions:* 
- User can search without authentication
- Date format follows standard calendar input
- Business class pricing shown is for round trip per person
- Phone number format validation exists
- Search results will be displayed on a new page/section

## Detailed Analysis

**Actor:** Potential flight customer (anonymous user)

**Goal:** Search for flights between two cities for specific dates and traveler requirements

**Preconditions:** 
- User has internet access
- PrimeSky website is accessible and functional
- User knows departure and destination cities
- User has decided on travel dates and class preference

**Trigger:** User visits PrimeSky website to search for flights

**Main Flow:**
1. User accesses the PrimeSky homepage
2. User selects trip type (Round Trip or One Way)
3. User enters departure city in "From" field
4. User enters destination city in "To" field  
5. User selects departure and return dates
6. User specifies number of travelers
7. User selects travel class (Business shown as default)
8. User clicks "SEARCH FLIGHT" button
9. System processes search criteria
10. System displays available flight options with pricing

**Alternate Flows:**
- User switches between Round Trip and One Way options
- User modifies search criteria before submitting
- User views promotional deals displayed on the page
- User contacts customer service via provided phone number

**Exception Flows:**
- Invalid or missing required fields
- No flights available for selected criteria
- System timeout or technical errors
- Invalid date selections (past dates, invalid ranges)

**Assumptions:**
- Form validation occurs client-side and server-side
- Search can be performed without user registration
- Pricing shown includes taxes and fees
- Contact form submission triggers email communication

## Test Cases

```gherkin
Feature: Flight Search Functionality
  As a potential customer
  The user wants to search for flights between cities
  So that the user can find and book suitable travel options

  @High
  Scenario: Successful round trip flight search with valid inputs
    Given the user is on the PrimeSky homepage
    When the user selects "ROUND TRIP" option
    And the user enters "LAS - United States" in the From field
    And the user enters "NYC - United States" in the To field
    And the user selects departure date as "15 Oct"
    And the user selects return date as "22 Oct"
    And the user sets travelers to "1"
    And the user selects "Business" class
    And the user clicks "SEARCH FLIGHT" button
    Then the user should see available flight results
    And the results should show round trip options
    And pricing should be displayed for Business class

  @High
  Scenario: Successful one way flight search
    Given the user is on the PrimeSky homepage
    When the user selects "ONE WAY" option
    And the user enters valid departure city
    And the user enters valid destination city
    And the user selects a future departure date
    And the user sets number of travelers
    And the user clicks "SEARCH FLIGHT" button
    Then the user should see one way flight results
    And return date field should be disabled/hidden

  @High
  Scenario: Search validation for required fields
    Given the user is on the PrimeSky homepage
    When the user leaves the "From" field empty
    And the user clicks "SEARCH FLIGHT" button
    Then the user should see a validation error for the From field
    And the search should not be submitted

  @High
  Scenario: Search validation for destination field
    Given the user is on the PrimeSky homepage
    When the user leaves the "To" field empty
    And the user fills all other required fields
    And the user clicks "SEARCH FLIGHT" button
    Then the user should see a validation error for the To field
    And the search should not be submitted

  @Medium
  Scenario: Date validation for past departure date
    Given the user is on the PrimeSky homepage
    When the user enters valid cities
    And the user selects a past date for departure
    And the user clicks "SEARCH FLIGHT" button
    Then the user should see an error message "Departure date cannot be in the past"
    And the search should not be submitted

  @Medium
  Scenario: Date validation for return date before departure
    Given the user is on the PrimeSky homepage
    When the user selects "ROUND TRIP"
    And the user enters valid cities
    And the user selects departure date as "22 Oct"
    And the user selects return date as "15 Oct"
    And the user clicks "SEARCH FLIGHT" button
    Then the user should see an error message "Return date must be after departure date"

  @Medium
  Scenario: Same origin and destination validation
    Given the user is on the PrimeSky homepage
    When the user enters "NYC - United States" in the From field
    And the user enters "NYC - United States" in the To field
    And the user clicks "SEARCH FLIGHT" button
    Then the user should see an error message "Origin and destination cannot be the same"

  @Medium
  Scenario: Maximum travelers validation
    Given the user is on the PrimeSky homepage
    When the user enters valid cities and dates
    And the user tries to enter more than maximum allowed travelers
    Then the system should prevent entry beyond the limit
    Or show a validation error for maximum travelers exceeded

  @Medium
  Scenario: No flights available for search criteria
    Given the user is on the PrimeSky homepage
    When the user searches for flights with very specific criteria
    And no flights are available for the selected route and dates
    Then the user should see a "No flights available" message
    And the user should be given options to modify search criteria

  @Low
  Scenario: Swap origin and destination functionality
    Given the user is on the PrimeSky homepage
    When the user enters "LAS - United States" in the From field
    And the user enters "NYC - United States" in the To field
    And the user clicks the swap button (if available)
    Then the From field should show "NYC - United States"
    And the To field should show "LAS - United States"

  @Medium
  Scenario: Travel class selection affects pricing display
    Given the user is on the PrimeSky homepage
    When the user completes a valid flight search
    And the user changes the class from "Business" to another class
    Then the displayed promotional pricing should update accordingly

  @Low
  Scenario: Contact form submission for immediate assistance
    Given the user is on the PrimeSky homepage
    When the user clicks "Need immediate assistance?"
    And the user fills in the contact form with valid details
    And the user submits the form
    Then the user should receive a confirmation message
    And the form should be cleared or hidden

  @Medium
  Scenario: Promotional deal interaction
    Given the user is on the PrimeSky homepage
    When the user views the promotional deals section
    And the user clicks on a deal (Business Class, First Class, or Premium Economy)
    Then the user should see more details about the promotion
    Or the search form should be pre-populated with relevant criteria

  @High
  Scenario: Mobile responsiveness of search form
    Given the user is on the PrimeSky homepage using a mobile device
    When the user interacts with all form elements
    Then all fields should be easily accessible and usable
    And the layout should be optimized for mobile interaction

  @Medium
  Scenario: Keyboard navigation accessibility
    Given the user is on the PrimeSky homepage
    When the user navigates using only keyboard (Tab, Enter, Arrow keys)
    Then the user should be able to access all interactive elements
    And complete a flight search using keyboard only

  @Low
  Scenario: Search performance validation
    Given the user is on the PrimeSky homepage
    When the user submits a flight search with valid criteria
    Then the search results should load within 5 seconds
    And the user should see a loading indicator during the search process
```