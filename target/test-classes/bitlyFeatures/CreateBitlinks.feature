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
Feature: Converts a long url to a Bitlink and sets additional parameters.

Scenario: Convert a URL to Bitlink
Given Valid access token and request body having long_url
When Sending POST Request
Then URL should be created with status 200
And Response is seen

Scenario: no body
Given Valid access token and request body having no body
When Sending POST Request
Then Unprocessable Entity with status 422


Scenario: long_url as null
Given Valid access token and request body having long_url as null
When Sending POST Request
Then Bad Request with status 400

Scenario: incorrect path parameter
Given Valid access token and request body
But incorrect path paramter "bitlink"
When Sending POST Request
Then Not Found with status 404

Scenario: invalid groupid
Given Valid access token and request body having invalid groupid
When Sending POST Request
Then Forbidden with status 403

Scenario: Deeplinks in request body
Given Valid access token and request body with deeplinks
When Sending POST Request
Then Payment Required with status 402

Scenario: Internal error is seen
Given Valid access token and request body
When Sending POST Request
Then Internal error with status 500

Scenario: Service is not available
Given Valid access token and request body
When Sending POST Request
Then Temporary Unavailable with status 503