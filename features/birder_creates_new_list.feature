Feature: Birder Creates a new List

As a birder
I want to create a new EBird List
So I can record what I've seen

Scenario: I record my birding trip
Given I know the "location" of the "birds" I've seen
When I list the "birds"
And assign them the "location"
Then I can add them as a list to my ebird account
