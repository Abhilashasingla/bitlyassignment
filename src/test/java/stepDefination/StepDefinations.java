package stepDefination;

import org.junit.runner.RunWith;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.junit.Cucumber;
;

@RunWith(Cucumber.class)
public class StepDefinations {

	@When("^Sending GET request$")
	public void sending_GET_request() throws Throwable {
		//TODO
		System.out.println("Step 2: Sending GET request");
	}
	
	@Then("Get group details with Status {int}")
	public void get_group_details_with_status(Integer int1) {
		System.out.println("Step 3: Get details with status "+ int1);
	}

	@Then("No group details shown with status {int}")
	public void no_group_details_shown_with_status(Integer int1) {
		System.out.println("Step 3: Forbidden "+ int1);
	}
	
	@Given("Group id is {string} and access token is {string}")
	public void group_id_is_and_access_token_is(String string, String string2) {
		System.out.println("Step 1: Pass values");
		System.out.println(string);
		System.out.println(string2);
	}
	
	@Given("User is on wrong Path")
	public void user_is_on_wrong_path_url() {
		System.out.println("Incorrect path parameter");
	}
	
	@Then("Not found with status {int}")
	public void not_found_with_status(Integer int1) {
		System.out.println("Not Found "+ int1 );
	}

	@Then("Internal error with status {int}")
	public void internal_error_with_status(Integer int1) {
		System.out.println("Internal error "+ int1);
	}

	@Then("Temporary Unavailable with status {int}")
	public void temporary_unavailable_with_status(Integer int1) {
		System.out.println("Temporary Unavilable "+ int1);
	}
	
	@Given("Sort on number of Clicks")
	public void sort_on_number_of_clicks() {
		System.out.println("Sorting on number of clicks");
	}

	@Then("Get link details with Status {int}")
	public void get_link_details_with_status(Integer int1) {
		System.out.println("Success "+ int1);
	}

	@Then("No link details shown with status {int}")
	public void no_link_details_shown_with_status(Integer int1) {
		System.out.println("Forbidden "+ int1);
	}

	@Given("pass {string} is {string}")
	public void pass_as(String string, String string2) {
		System.out.println("Key "+ string);
		System.out.println("Value "+ string2);
	}

	@Then("Bad Request with status {int}")
	public void bad_request_with_status(Integer int1) {
		System.out.println("Bad Request "+ int1);
	}
	
	@Given("Valid access token and request body having long_url")
	public void valid_access_token_and_request_body_having_long_url() {
		System.out.println("Valid access token, request body with long_url");
	}

	@Then("URL should be created with status {int}")
	public void url_should_be_created_with_status(Integer int1) {
		System.out.println("Success " + int1);
	}

	@Then("Response is seen")
	public void response_is_seen() {
		System.out.println("Response body");
	}

	@Given("Valid access token and request body having no body")
	public void valid_access_token_and_request_body_having_no_body() {
		System.out.println("Valid access token");
	}

	@Then("Unprocessable Entity with status {int}")
	public void unprocessable_entity_with_status(Integer int1) {
		System.out.println("Unprocessable Entity "+ int1);
	}

	@Given("Valid access token and request body having long_url as null")
	public void valid_access_token_and_request_body_having_long_url_as_null() {
		System.out.println("Valid access token, long_url as null");
	}

	@Given("Valid access token and request body")
	public void valid_access_token_and_request_body() {
		System.out.println("Valid access token, request body");
	}

	@Given("incorrect path paramter {string}")
	public void incorrect_path_paramter(String string) {
		System.out.println("incorrect resource");
	}

	@Then("Not Found with status {int}")
	public void not_found_with_status1(Integer int1) {
		System.out.println("Not Found "+ int1);
	}

	@Given("Valid access token and request body having invalid groupid")
	public void valid_access_token_and_request_body_having_invalid_groupid() {
		System.out.println("Valid access token, invalid groupid");
	}

	@Then("Forbidden with status {int}")
	public void forbidden_with_status(Integer int1) {
		System.out.println("Forbidden "+ int1);
	}

	@Given("Valid access token and request body with deeplinks")
	public void valid_access_token_and_request_body_with_deeplinks() {
		System.out.println("Valid access token, request body with deeplinks");
	}

	@Then("Payment Required with status {int}")
	public void payment_required_with_status(Integer int1) {
		System.out.println("Payment Required "+ int1);
	}

	@When("Sending POST Request")
	public void sending_post_request() {
		System.out.println("Step2: POST request");
	}

}
