package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.time.Duration;

public class ResultsPage {
    private WebDriver driver;
    private By priceBlock = By.xpath("//h6[starts-with(text(), '$')]");

    public ResultsPage(WebDriver driver) {
        this.driver = driver;
    }

    public boolean isPriceDisplayed() {
        try {
            WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
            WebElement priceElem = wait.until(ExpectedConditions.visibilityOfElementLocated(priceBlock));
            return priceElem != null;
        } catch (Exception e) {
            return false;
        }
    }
}
