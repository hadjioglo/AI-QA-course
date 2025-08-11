package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class ResultsPage {
    private WebDriver driver;
    private By priceBlock = By.xpath("//*[contains(text(),'Total per Person') or contains(text(),'Old Price')]");

    public ResultsPage(WebDriver driver) {
        this.driver = driver;
    }

    public boolean isPriceDisplayed() {
        return driver.findElements(priceBlock).size() > 0;
    }
}
