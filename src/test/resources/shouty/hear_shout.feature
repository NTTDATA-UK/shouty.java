Feature: Hear Shout 

	Rules:
		- shouts will only be text
		- shouts are limited to 2000 chars
		- the range of shouts is 1000m

Scenario: Bill shouts a message 
	Given Amy was 500m from Bill
	When Bill shouts "Free Bagels!"
	Then Amy should hear the shout
	
#@to_do
#Scenario: Bill shouts a video message
#	When Bill shouts a video
#	Then the shout should not be sent 
	
Scenario: John is too far away 
	Given John was 1500m from Bill 
	When Bill shouts a valid message
	Then John should not hear the shout
	
Scenario: Multiple people hear a shout
    Given "Amy" was 500m from "Bob"
    And "Bill" was 600m from "Bob"
    When "Bob" shouts a valid message
    Then "Amy" and "Bill" should hear the shout