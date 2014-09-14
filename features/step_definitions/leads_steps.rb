Given /^I am logged in$/ do
  visit_page(LoginPage)
  on_page(LoginPage).login_with(FigNewton.default_user_email,FigNewton.default_user_password)
end

When /^I create new lead$/ do
  on_page(DashboardPage).go_to_leads
  on_page(LeadsPage).press_new_lead
  @lead = on_page(LeadsNewPage).add_new_lead
end

Then(/^Lead status is "(.*?)"$/) do |name|
  expect(on_page(LeadsEditPage).lead_status_with_wait).to eq(name)
end

When (/^I change setting lead status name from "(.*?)"$/) do |initial_status|
  on_page(LeadsEditPage).open_settings
  @fake_status_name = Faker::Lorem.word
  on_page(SettingsPage).change_lead_status_name(initial_status, @fake_status_name)
end

Then(/^Lead status name is applied on leads page$/) do
  on_page(SettingsPage).go_to_leads
  on_page(LeadsPage).open_lead_by_name(@lead['first_name'] + ' ' + @lead['last_name'])
  expect(on_page(LeadsEditPage).lead_status_with_wait).to eq(@fake_status_name)
end