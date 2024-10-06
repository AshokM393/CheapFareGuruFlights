Feature: cheapguru Flight Search

Background:
Given I am on the cheapguru flight search page
	
 @smoke
  Scenario Outline: Find top five flights with lowest price
 		 When I search for a round-trip flight from "<departure>" to "<destination>"
     And I choose the "<starttime>" and "<endtime>"
     And I choose "<cabinclass>"
     And I click on the search button
     Then I should see all the flights from departure to destination
     Then return top five flights with lowest price for round trip route "<departure>" and "<destination>"
     

    Examples:
      | departure | destination | starttime           | endtime             | cabinclass |
      | Cleveland | Dallas      | 10 October 2024     | 15 October 2024     | Economy    |
      | New York  | London      | 25 October 2024     | 30 October 2024     | Business   |
      
      
 @regression
  Scenario Outline: Find top five flights with the longest duration
    When I search for a round-trip flight from "<departure>" to "<destination>"
    And I choose the "<starttime>" and "<endtime>"
    And I choose "<cabinclass>"
    And I click on the search button
    Then I should see all the flights from departure to destination
    Then return the top five flights with the longest duration for the route "<departure>" to "<destination>"

    Examples:
      | departure  | destination | starttime           | endtime            | cabinclass |
      | Cleveland  | Dallas      | 10 October 2024     | 15 October 2024    | Economy    |
      | New York   | Tampa       | 25 October 2024     | 30 October 2024    | Business   |