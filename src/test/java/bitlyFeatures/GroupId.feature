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

Feature: Return details of the group

@Sanity
Scenario: Fetch details of group
Given Group id is "valid Group id" and access token is "valid token"
When Sending GET request
Then Get group details with Status 200
	
Scenario: Fetch details of group with no access token
Given Group id is "valid Group id" and access token is "null"
When Sending GET request
Then No group details shown with status 403
	
Scenario: Fetch details of group with incorrect access token
Given Group id is "valid Group id" and access token is "invalid token"
When Sending GET request
Then No group details shown with status 403
	
Scenario: Fetch details of group with incorrect groupid
Given Group id is "invalid Group id" and access token is "valid token"
When Sending GET request
Then No group details shown with status 403

Scenario: Resource is not found
Given Group id is "valid Group id" and access token is "valid token"
But User is on wrong Path
When Sending GET request
Then Not found with status 404

Scenario: Internal error is seen
Given Group id is "valid Group id" and access token is "valid token"
When Sending GET request
Then Internal error with status 500

Scenario: Service is not available
Given Group id is "valid Group id" and access token is "valid token"
When Sending GET request
Then Temporary Unavailable with status 503