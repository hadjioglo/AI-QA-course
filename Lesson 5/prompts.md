---
# AI Prompts for Automated Testing

## Prompt 1: Playwright MCP Server Flight Search

Task

Use the Playwright MCP Server to navigate to [https://fdev.primesky.com](https://fdev.primesky.com). All browser automation must be routed through the MCP Server.

### Scenario 1: Flight Search (NYC → LON)

Search for a flight from NYC to LON for next week (10-day period, 1 passenger) and validate that results for business, economy, and first class are displayed.

Steps
1. Select **New York** in the "From" field (type and select from dropdown).
2. Select **London** in the "To" field (type and select from dropdown).
3. Select dates for next week (10 days).
4. Leave 1 passenger.
5. Verify prices are displayed for all classes.
6. Take a screenshot of the results.
7. Close the browser when complete.

Save report results in** `report2.md`

---

## Prompt 1: Playwright MCP Server + Cypress Framework

**Task:**

Use the Playwright MCP Server to perform automated testing of [https://fdev.primesky.com](https://fdev.primesky.com) and generate a test framework.

### Steps:
1. Navigate to [https://fdev.primesky.com](https://fdev.primesky.com)
2. Execute the following scenario:
   - Select **New York** in "From" field (type and select from dropdown)
   - Select **London** in "To" field (type and select from dropdown)
   - Select dates
   - Leave 1 passenger
   - Verify prices are displayed
   - Take screenshot of results
   - Close the browser when complete
3. After completing the scenario, generate a complete test framework using:
   - **Cypress** with **TypeScript**
   - **Page Object Model** design pattern
   - Independent test files for each scenario
   - Fixtures for test data in `cypress.env.json`
4. Include project structure with:
   - `.gitignore` (excluding `node_modules` and `cypress.env.json`)
   - Custom Cypress task for detailed test logging
   - `README.md` with instructions
   - GitHub Actions workflow for CI/CD

**Provide the complete implementation with all necessary files and configurations.**

#### Example Test Result
```
0 passing (7s)
1 failing

1) Flight Search E2E
   should search for flights and display results:
 AssertionError: Timed out retrying after 4000ms: Expected to find element: `input[placeholder="From"]`, but never found it.
  at FlightSearchPage.enterFrom (webpack://ai-qa-cypress-framework/./cypress/pages/FlightSearchPage.ts:12:0)
  at Context.eval (webpack://ai-qa-cypress-framework/./cypress/e2e/flight-search.cy.ts:10:0)
```

---

## Prompt 2: Playwright MCP Server + Java Selenium Maven Framework

**Task:**

Use the Playwright MCP Server to perform automated testing of [https://fdev.primesky.com](https://fdev.primesky.com) and generate a test framework in the `prime` folder.

### Steps:
1. Navigate to [https://fdev.primesky.com](https://fdev.primesky.com)
2. Execute the following scenario:
   - Select **New York** in "From" field (type and select from dropdown)
   - Select **London** in "To" field (type and select from dropdown)
   - Select dates
   - Leave 1 passenger
   - Verify prices are displayed
   - Take screenshot of results
   - Close the browser when complete
3. After completing the scenario, generate a complete test framework using:
   - **Java Selenium Maven**
   - **Page Object Model** design pattern
   - Independent test feature files for each scenario
   - All needed dependencies in `pom.xml`
4. Include project structure with:
   - `.gitignore`
   - log4j for logging
   - `README.md` with instructions
   - GitHub Actions workflow for CI/CD

**Provide the complete implementation with all necessary files and configurations.**

   - Independent test files for each scenario

   - Fixtures for test data in cypress.env.json
  

4. Include project structure with:

   - .gitignore file (excluding node_modules and cypress.env.json)

   - Custom Cypress task for detailed test logging

   - README.md with instructions

   - GitHub Actions workflow for CI/CD
  

Provide the complete implementation with all necessary files and configurations.


Result: 
created framework ok, but running test failed, see example below, needed to correct the test a bit :) 

0 passing (7s)
  1 failing

  1) Flight Search E2E
       should search for flights and display results:
     AssertionError: Timed out retrying after 4000ms: Expected to find element: `input[placeholder="From"]`, but never found it.
      at FlightSearchPage.enterFrom (webpack://ai-qa-cypress-framework/./cypress/pages/FlightSearchPage.ts:12:0)
      at Context.eval (webpack://ai-qa-cypress-framework/./cypress/e2e/flight-search.cy.ts:10:0)


Prompt 3: 

Use the Playwright MCP Server to perform automated testing of the https://fdev.primesky.com website and generate a test framework:

1. Navigate to https://fdev.primesky.com
2. Execute these test scenario: - Select New york in “from” field from the list you should select available airport or city from the dropdown when you start typing New york, then dropdown appears and you select it from there. 
- Select London in “to” the field from the list. you should select available airport or city from the dropdown when you start typing  London then dropdown appears and you select it from there. 
- select dates 
- leave 1 passenger
   - Verify successfully displayed prices
- take screenshot with results
- Close the browser when complete

3. After completing the scenarios, generate a complete test framework in “prime” folder using:

   - Java selenium maven

   - Page Object Model design pattern

   - Independent test feature files for each scenario

   - All needed dependencies in pom.xml
  

4. Include project structure with:

   - .gitignore file 

   - log4j for logging

   - README.md with instructions

   - GitHub Actions workflow for CI/CD
  

Provide the complete implementation with all necessary files and configurations.

Results: had to adjust xpaths again
