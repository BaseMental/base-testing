class LeadsEditPage
  include PageObject
  include NavigationPanel

  span(:lead_status, :class => 'lead-status')

  def wait_for_lead_status
    wait_until do
      lead_status_element.visible?
    end
    lead_status
  end
end