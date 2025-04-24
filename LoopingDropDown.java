package projects;

import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class LoopingDropDown {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub

		System.setProperty("webdriver.chrome.driver", "C:\\Users\\John Nguyen\\Documents\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		driver.manage().window().maximize(); 
		driver.get("https://www.spicejet.com/");
		Thread.sleep(3000);
		driver.findElement(By.xpath("//div[contains(text(),'1 Adult')]")).click();
		//total of 3 adults selected
//	int i=1;
//	while (i<5)
//	{
//		driver.findElement(By.xpath("//div[@data-testid='Adult-testID-plus-one-cta']")).click(); //4 times
//		i++;
//	}
		
	for(int i=1;i<5;i++)
	{
		driver.findElement(By.xpath("//div[@data-testid='Adult-testID-plus-one-cta']")).click();
	}
		driver.findElement(By.xpath("//div[@data-testid='home-page-travellers-done-cta']")).click();
		System.out.println(driver.findElement(By.xpath("//div[contains(text(),'5 Adults')]")).getText());
	}

}
