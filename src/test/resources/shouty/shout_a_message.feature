Feature: Shout a message
As a user
I want to shout a message
In order to be heard

  Rules:
  	- Shouts hear up to and including 1000 metres
  	- Shouts will be <= 2000 characters
  	- Shouts should be text only
  	
  Scenario: Shout is in range
  	Given Lucy is 500 metres away from John
  	When John shouts "Free Beer"
  	Then Lucy should hear the shout
    
  Scenario: The shout is not in range
    Given Smiddy is 1001 metres away from John
    When John shouts "Free Bagels"
    Then Smiddy should not hear the shout	
  