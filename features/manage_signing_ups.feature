Feature: Manage signing_ups
In order to get new users and have a project
As a new Users
I wants to be able to sign up

@javascript
Scenario: Register new User
Given I am on the sign up page
And I fill in "Name" with "Rupesh"
And I fill in "Email" with "r@r.com"
And I fill in "Password" with "Rupesh"
And I fill in "Password confirmation" with "Rupesh"
And I press "Sign up"
And I sleep for 2 seconds
Then 1 user should exist
And I should see "Welcome! You have signed up successfully."

Scenario: Loggin in a user
Given a user exists with "r@r.com" and password "Rupesh"
Given I am on the login page
And I fill in "Email" with "r@r.com"
And I fill in "Password" with "Rupesh"
And I press "Sign in"
And I sleep for 2 seconds
Then I should see "Signed in successfully."

