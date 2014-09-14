class SettingsPage
  include PageObject
  include NavigationPanel

  direct_url "#{FigNewton.base_url}/settings/profile"

  link(:leads_settings, :href => "/settings/leads")
  link(:lead_status, :href => "#lead-status")
  div(:lead_status_collection, :xpath => "//div[@id='lead-status']/div[contains(@class,'named-objects-list')]")

  def leads_settings_with_wait
    wait_until do
      leads_settings_element.visible?
    end
    leads_settings
  end

  def change_lead_status_name(from, to)
    leads_settings_with_wait
    lead_status
    edit_button = lead_status_collection_element.button_element(:xpath => ".//div[label/h4[text()='#{from}']]//button[contains(@class,'edit')]")
    edit_button.click
    edit_input = lead_status_collection_element.text_field_element(:value => from)
    edit_input.value = to
    save_button = lead_status_collection_element.button_element(:xpath => ".//button[contains(@class,'save')]")
    save_button.click
  end

end