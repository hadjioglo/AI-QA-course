package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.time.Duration;

public class HomePage {
    private WebDriver driver;

    private By fromInput = By.xpath("//input[contains(@placeholder,'port_from')]");
    private By toInput = By.xpath("//input[contains(@placeholder,'port_to')]");
    private By dateInput = By.xpath("//input[contains(@placeholder,'Dates')]");
    private By searchButton = By.xpath("//button[contains(.,'SEARCH FLIGHT')]");
    private By acceptCookiesButton = By.xpath("//button[contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'accept') or contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'cookie') or contains(.,'Accept All')]");

    public HomePage(WebDriver driver) {
        this.driver = driver;
    }


    public void acceptCookiesIfPresent() {
        try {
            WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(5));
            WebElement btn = wait.until(ExpectedConditions.presenceOfElementLocated(acceptCookiesButton));
            if (btn.isDisplayed() && btn.isEnabled()) {
                btn.click();
            }
        } catch (Exception e) {
            // Button not present, ignore
        }
    }


    public void enterFrom(String from) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        WebElement fromElem = wait.until(ExpectedConditions.visibilityOfElementLocated(fromInput));
        fromElem.clear();
        fromElem.sendKeys(from);
    }


    public void enterTo(String to) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        WebElement toElem = wait.until(ExpectedConditions.visibilityOfElementLocated(toInput));
        toElem.clear();
        toElem.sendKeys(to);
    }


    public void selectDates(String dates) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        WebElement dateElem = wait.until(ExpectedConditions.elementToBeClickable(dateInput));
        dateElem.click();
        // Implement date selection logic as needed
    }


    public void clickSearch() {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        WebElement searchElem = wait.until(ExpectedConditions.elementToBeClickable(searchButton));
        searchElem.click();
    }
}
