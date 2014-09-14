class LeadsEditPage
  include PageObject
  include NavigationPanel

  span(:lead_status, :class => 'lead-status')

  def lead_status_with_wait
    wait_until do
      lead_status_element.visible?
    end
    lead_status
  end
end