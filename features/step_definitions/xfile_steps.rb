Given(/^the following files exist:$/) do |xfiles_table|
  xfiles_table.hashes.each do |xfile|
    Xfile.create xfile
  end
end

When /^(?:|I )upload a json file$/ do
  attach_file(:content, File.join(RAILS_ROOT, 'features', 'upload-files', 'sample1.json'))
  click_button "import"
end

Given /^(?:|I )visit the (.+)$/ do |page_name|
  visit path_to(page_name)
end

And /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

Then(/^I should see "([^"]*)"$/) do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

When(/^I click "([^"]*)" for "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)"a"([^"]*)"a"([^"]*)"$/) do |arg1, arg2, arg3|
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^I should be sent to the (.+)$/) do |page_name|
  visit path_to(page_name)
end

When(/^I don't upload a file$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the file upload page again$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
