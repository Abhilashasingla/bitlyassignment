#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
Feature: Returns a list of Bitlinks sorted by group.

@Sanity
Scenario: Fetch links sorted on number of clicks
Given Group id is "valid Group id" and access token is "valid token"
And Sort on number of Clicks
When Sending GET request
Then Get group details with Status 200
	
Scenario: Fetch most clicked link
Given Group id is "valid Group id" and access token is "valid token"
And Sort on number of Clicks
And pass "Size" is "1"
When Sending GET request
Then Get group details with Status 200

Scenario: Fetch top 10 clicked link
Given Group id is "valid Group id" and access token is "valid token"
And Sort on number of Clicks
And pass "Size" is "10"
When Sending GET request
Then Get group details with Status 200

Scenario: Fetch details of link for query parameter
Given Group id is "valid Group id" and access token is "valid token"
And Sort on number of Clicks
And pass "query paramter" is "correct"
When Sending GET request
Then Get link details with Status 200

Scenario: Fetch details of link in hour
Given Group id is "valid Group id" and access token is "valid token"
And Sort on number of Clicks
And pass "unit" is "hour"
When Sending GET request
Then No link details shown with status 403

Scenario: Resource is not found
Given Group id is "valid Group id" and access token is "valid token"
And Sort on number of Clicks
But User is on wrong Path
When Sending GET request
Then Not found with status 404

Scenario: Invalid request
Given Group id is "valid Group id" and access token is "valid token"
And Sort on number of Clicks
And pass "query paramter" is "incorrect value"
When Sending GET request
Then Bad Request with status 400

Scenario: Internal error is seen
Given Group id is "valid Group id" and access token is "valid token"
And Sort on number of Clicks
When Sending GET request
Then Internal error with status 500

Scenario: Service is not available
Given Group id is "valid Group id" and access token is "valid token"
When Sending GET request
Then Temporary Unavailable with status 503