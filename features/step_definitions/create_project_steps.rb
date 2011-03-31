Given /^the following create_projects:$/ do |create_projects|
  CreateProject.create!(create_projects.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) create_project$/ do |pos|
  visit create_projects_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following create_projects:$/ do |expected_create_projects_table|
  expected_create_projects_table.diff!(tableish('table tr', 'td,th'))
end
