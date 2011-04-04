Feature: Manage Creation of Project
In order to log-in as user and create a new  project
As a new Users
I want to add new project

# Background do
# User.make!
# end

@javascript
Scenario: Create new project from user
Given a user exists with "r@r.com" and password "Rupesh"
Given I am on the login page
And I fill in "Email" with "r@r.com"
And I fill in "Password" with "Rupesh"
And I press "Sign in"
And I sleep for 2 seconds
Then I should see "Signed in successfully."
And I sleep for 2 seconds
Then I should see "Project Listings"
And I sleep for 2 seconds
And I follow "Create New Project"
And I sleep for 4 seconds
And I fill in "project_name" with "cloud factory"
And I fill in "project_client" with "Rupesh"
And I select "2012" from "project_deadline_1i"
And I select "May" from "project_deadline_2i"
And I select "Running" from "project_status"
And I fill in "project_description" with "Testing features with cucumber on rails"
And I press "Create Project"
Then I should see "Project CLOUD FACTORY has been initialized "
And I sleep for 4 secconds

