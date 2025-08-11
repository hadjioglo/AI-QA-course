# Prime Automation Framework

This is a sample Java Selenium Maven test automation framework using the Page Object Model (POM) and Cucumber for BDD.

## Features
- Page Object Model structure
- Cucumber BDD with feature files
- Selenium WebDriver for browser automation
- JUnit for test execution
- log4j for logging
- GitHub Actions for CI

## How to Run
1. Install Java 11+ and Maven
2. Run `mvn clean test`

## Project Structure
- `src/main/java/pages` - Page Object classes
- `src/main/java/tests` - Step Definitions and Test Runners
- `src/test/resources/features` - Cucumber feature files
- `src/test/resources/logs` - Log output

## Sample Scenario
- Search for a flight from New York to London, select dates, and verify prices are displayed.

## Continuous Integration
- See `.github/workflows/ci.yml` for GitHub Actions setup.
