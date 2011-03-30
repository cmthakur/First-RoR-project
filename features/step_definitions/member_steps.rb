Then /^(\d+) user should exist$/ do |number|
  User.count.should == 1
end

Given /^a user exists with "([^"]*)" and password "([^"]*)"$/ do |email, pass|
  User.create!(:email => email, :password => pass)
end

Given /^I sleep for (\d+) seconds$/ do |duration|
  sleep(duration.to_i)
end
