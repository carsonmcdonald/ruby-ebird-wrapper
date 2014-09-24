Feature: birders share lists with other birders in their group
It's important for birders to be able to share their lists with each other because it confirms that the birds were seen, and helps others create a record of the event for their own uses.

Scenario: Birder shares a list with a group

Given a birder already has an existing list
When others went birding with them
Then the birder can share the list with other birders who have an ebird account.
