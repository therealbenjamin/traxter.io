When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see an about link$/) do
  expect(page).to have_link("About", href: about_path)
end

Then(/^I should see a contact link$/) do
  expect(page).to have_link("Contact", href: contact_path)
end

Then(/^I should see a sign in link$/) do
  expect(page).to have_link("Sign In", href: new_user_session_path)
end

Then(/^I should see a sign up link$/) do
  expect(page).to have_link("Sign Up", href: new_user_registration_path)
end

When(/^I click "(.*?)"$/) do |link|
  click_link link
end

Then(/^I go to the sign up page$/) do
  visit new_user_registration_path
end

When(/^I fill in "(.*?)" for "(.*?)"$/) do |content, field|
  fill_in(field, with: content)
end

And(/^I press "(.*?)"$/) do |button|
  click_button button
end

Then(/^User count should change by (\d+)$/) do |num|
  user_count = User.all.count
  user_count.should == num.to_i
end

Then(/^I should see a welcome message$/) do
  expect(page).to have_selector("div.alert-box.success.radius")
end

Given(/^the following user:$/) do |table|
  table.hashes.each do |attributes|
    FactoryGirl.create(:user, attributes)
  end
end

Then(/^I should see an error message$/) do
  expect(page).to have_selector("div#error_explanation")
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

Then(/^I should not see "(.*?)"$/) do |text|
  expect(page).not_to have_content(text)
end

# Given(/^that I am signed in with "(.*?)"$/) do |provider|
#   valid_mock_auth_hash(provider)
#   visit "/users/auth/#{provider.downcase}"
# end

# When(/^I try and login with "(.*?)" using invalid credentials$/) do |provider|
#   invalid_mock_auth_hash(provider)
#   visit "/users/auth/#{provider.downcase}"
# end
