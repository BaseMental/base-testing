require_relative ('intro_frame')

class LeadsPage
  include PageObject
  include IntroFrame

  direct_url '#{FigNewton.base_url}/leads'

  link(:new_lead, :href => '/leads/new')
  unordered_list(:all_leads, :class => 'leads')

  def press_new_lead
    # it would be better to handle intro by adding a cookie that disables intro... but I couldn't find such
    skip_intro
    new_lead
  end

  def open_lead_by_name(name)
    link_to_lead = all_leads_element.link_element(:xpath => "//a[@class='lead-name' and text()='#{name}']")
    wait_until do
      link_to_lead.visible?
    end
    link_to_lead.click
  end

end