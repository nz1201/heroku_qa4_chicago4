Feature: Verifications 


@reg @b	
Scenario: Students' locations
Given the user "dfrederickb5@yellowbook.com" and "engraciahuc"
And the user should click signin button
Then the user should see just study rooms are clickable





@reg	
Scenario Outline: Name verification
	Given the user "<email>" and "<password>"
	And the user should click signin button
	Then the user should go to my-self account page
	And the user's name: "<userName>" should be displayed
	
	Examples:
    |<email> 						  |<password>| <userName>|
    |htwinbrowb4@blogspot.com		  | 		 ||
	|dfrederickb5@yellowbook.com      |			||
	|apainb6@google.co.jp		      |			||
	|fbawmeb7@studiopress.com	      |			||
	|dhughillb8@gov.uk			      |			||
	|nasgodbyb9@amazon.co.jp	      |			||
	
	
	
@reg	
Scenario Outline: Team's name verification
	Given the user "<email>" and "<password>"
	And the user should click signin button
	Then the user should go to my-team account page
	And the user's team name: "<teamName>" should be displayed
	
	Examples:
    |email 						 	 |password| teamName|
    |htwinbrowb4@blogspot.com		  | 	  |         |
	|dfrederickb5@yellowbook.com      |		  |			|
	|apainb6@google.co.jp		      |		  | 	|
	|fbawmeb7@studiopress.com	      |			||
	|dhughillb8@gov.uk			      |			||
	|nasgodbyb9@amazon.co.jp	      |			||



@reg	@b
Scenario: Modules verification
	Given the user "dfrederickb5@yellowbook.com" and "engraciahuc"
	And the user should click signin button
	Then the user should see all modules:
	|map	  |
	|schedule |
	|hunt     |
	|my       |
	
@reg	@c
Scenario Outline: Reservation time verification
	Given the user "teacheriljanettebaskett@gmail.com" and "janettebaskett"
	And the user should click signin button
	Then the user should click hunt button
	And the user should select available date
	And the user should be able to "<choose>" time : "<time>"
	
	Examples: 
	|time| choose|
	|30|	min|
	|200| max|