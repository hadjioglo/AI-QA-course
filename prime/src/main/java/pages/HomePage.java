package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.time.Duration;

public class HomePage {
    private WebDriver driver;

    private By fromInput = By.xpath("//input[contains(@name,'port_from')]");
    private By toInput = By.xpath("//input[contains(@name,'port_to')]");
    private By dateInput = By.xpath("//input[contains(@name,'dates')]");
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
    // Wait for dropdown and select airport option matching 'from'
    By airportOption = By.xpath("//div[contains(@class,'_port') and contains(@class,'_loc') and @data-airport='" + from + "']");
    WebElement optionElem = wait.until(ExpectedConditions.elementToBeClickable(airportOption));
    optionElem.click();
    }


    public void enterTo(String to) {
    WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
    WebElement toElem = wait.until(ExpectedConditions.visibilityOfElementLocated(toInput));
    toElem.clear();
    toElem.sendKeys(to);
    // Wait for dropdown and select airport option matching 'to'
    By airportOption = By.xpath("//div[contains(@class,'_port') and contains(@class,'_loc') and @data-airport='" + to + "']");
    WebElement optionElem = wait.until(ExpectedConditions.elementToBeClickable(airportOption));
    optionElem.click();
    }


    public void selectDates(String dates) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        WebElement dateElem = wait.until(ExpectedConditions.elementToBeClickable(dateInput));
        dateElem.click();

        // Parse dates string, e.g. "15 Aug - 22 Sep"
        String[] parts = dates.split("-");
        if (parts.length == 2) {
            String departure = parts[0].trim();
            String arrival = parts[1].trim();

            // Extract day numbers (assumes format like "15 Aug" or "22 Sep")
            String departureDay = departure.split(" ")[0];
            String arrivalDay = arrival.split(" ")[0];

            // Select departure date
            By departureDate = By.xpath("//div[contains(@class,'day-item') and text()='" + departureDay + "']");
            WebElement depElem = wait.until(ExpectedConditions.elementToBeClickable(departureDate));
            depElem.click();

            // Select arrival date
            By arrivalDate = By.xpath("//div[contains(@class,'day-item') and text()='" + arrivalDay + "']");
            WebElement arrElem = wait.until(ExpectedConditions.elementToBeClickable(arrivalDate));
            arrElem.click();
        }
        // else: handle invalid format if needed
    }


    public void clickSearch() {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        WebElement searchElem = wait.until(ExpectedConditions.elementToBeClickable(searchButton));
        searchElem.click();
    }
}
