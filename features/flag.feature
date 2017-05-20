Feature: Flag
	As a user
	I would like to create new api feature flags, change existing ones and
	be able to get all of them according my app version or platform

Scenario: Add a new featureflag
	Given that I access a path "/featureflag"
	When I send the post request with correct parameters
	Then I see status code two hundred

Scenario: Add a new featureflag with incorrect parameters
	Given that I access a path "/featureflag"
	When I send the post request with incorrect parameters
	Then I see status code four hundred

Scenario: Get a result with correct parameters
  Given that I access a path "/featureflag"
  When I send the request with correct parameters
  Then I see status code two hundred

Scenario: Get a result with incorrect parameters
  Given that I access a path "/featureflag"
  When I send the request with incorrect parameters
  Then I see status code four hundred
