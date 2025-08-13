
package tests;
import io.cucumber.java.After;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import utils.WebDriverSingleton;
import utils.ConfigReader;
import utils.Log;
import pages.HomePage;
import pages.ResultsPage;

public class FlightSearchSteps {
    private WebDriver driver;
    private HomePage homePage;
    private ResultsPage resultsPage;

    @Given("I am on the PrimeSky home page")
    public void i_am_on_the_home_page() {
        Log.logger.info("Opening browser and navigating to home page");
        driver = WebDriverSingleton.getDriver();
        driver.get(ConfigReader.get("baseUrl"));
        homePage = new HomePage(driver);
        homePage.acceptCookiesIfPresent();
    }

    @When("I search for a flight from {string} to {string} with dates {string}")
    public void i_search_for_flight(String from, String to, String dates) {
        Log.logger.info("Searching for flight: from {} to {} with dates {}", from, to, dates);
        homePage.enterFrom(from);
        homePage.enterTo(to);
        homePage.selectDates(dates); // Implement date logic as needed
        homePage.clickSearch();
        resultsPage = new ResultsPage(driver);
    }

    @Then("I should see prices displayed")
    public void i_should_see_prices_displayed() {
        Log.logger.info("Verifying that prices are displayed on results page");
        Assert.assertTrue(resultsPage.isPriceDisplayed());
    }

    @After
    public void tearDown() {
        Log.logger.info("Closing browser");
        WebDriverSingleton.quitDriver();
    }
}
