package cucumberOptions;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;



//feature
@RunWith(Cucumber.class)
@CucumberOptions(
		features = "src/test/java/bitlyFeatures",
		glue = { "stepDefination" }
		)
public class TestRunner {

}
