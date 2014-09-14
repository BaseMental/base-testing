require 'watir-webdriver'

Before do
  @browser = Watir::Browser.new FigNewton.browser.to_sym
  @browser.window.resize_to(FigNewton.browser_width, FigNewton.browser_height)
end

After do
  @browser.close
end

After ('@teardown_change_lead_status_back_to_new') do
  visit_page(SettingsPage)
  on_page(SettingsPage).change_lead_status_name(@fake_status_name, 'New')
end



