package projects;

import org.openqa.selenium.chrome.ChromeDriver;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class DynamicDropdown {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub

		System.setProperty("webdriver.chrome.driver", "C:\\Users\\John Nguyen\\Documents\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		//makes Chrome instance maximize window
		//driver.manage().window().maximize();  
		driver.get("https://www.makemytrip.global/");
		Thread.sleep(2000);
		driver.findElement(By.xpath("//span[@class='commonModal__close']")).click();
		
		
		driver.manage().timeouts().pageLoadTimeout(10, TimeUnit.SECONDS);
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		
		String OptionToSelect = "Dulles Intl-DC";
		int count=0;
		driver.findElement(By.xpath("//input[@id='fromCity']")).click();
		driver.findElement(By.xpath("//input[@placeholder='From']")).sendKeys("DC");
		Thread.sleep(3000);
		List<WebElement> optionList = driver.findElements(By.xpath("//ul[@class='react-autosuggest__suggestions-list']//li"));
		
		for(WebElement ele:optionList)
		{
			String currentOption=ele.getText();
			
			if(currentOption.contains(OptionToSelect))
			{
				ele.click();
				count++;
				break;
			}
		}
		if(count!=0)
		{
			System.out.println(OptionToSelect + " has been selected in the Drop Down");
		}
		else
		{
			System.out.println("Option you wanted to select is not available in the Drop Down");
		}
	}

}
