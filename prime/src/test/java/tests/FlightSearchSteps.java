package tests;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import pages.HomePage;
import pages.ResultsPage;

public class FlightSearchSteps {
    private WebDriver driver;
    private HomePage homePage;
    private ResultsPage resultsPage;

    @Given("I am on the PrimeSky home page")
    public void i_am_on_the_home_page() {
        driver = new ChromeDriver();
        driver.get("https://fdev.primesky.com");
        homePage = new HomePage(driver);
        homePage.acceptCookiesIfPresent();
    }

    @When("I search for a flight from {string} to {string} with dates {string}")
    public void i_search_for_flight(String from, String to, String dates) {
        homePage.enterFrom(from);
        homePage.enterTo(to);
        homePage.selectDates(dates); // Implement date logic as needed
        homePage.clickSearch();
        resultsPage = new ResultsPage(driver);
    }

    @Then("I should see prices displayed")
    public void i_should_see_prices_displayed() {
        Assert.assertTrue(resultsPage.isPriceDisplayed());
        driver.quit();
    }
}
