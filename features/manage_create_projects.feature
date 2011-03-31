Feature: Manage Creation of Project
In order to log-in as user and create a new  project
As a new Users
I want to add new project

Background do
User.make!
end

@javascript
Scenario: Loggin in a user
And I fill in "Email" with "r@r.com"
And I fill in "Password" with "Rupesh"
And I press "Sign in"
And I sleep for 90 seconds
Then I should see "Project Listings"
And I sleep for 4 seconds
And I follow "Create New Project"
And I sleep for 4 seconds
