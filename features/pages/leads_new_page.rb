class LeadsNewPage
  include PageObject

  direct_url "#{FigNewton.base_url}/leads/new"

  text_field(:first_name, :id => 'lead-first-name')
  text_field(:last_name, :id => 'lead-last-name')
  text_field(:company, :id => 'lead-company-name')
  text_field(:title, :id => 'lead-title')
  text_field(:email, :id => 'lead-email')
  button(:save, :xpath => "//div[contains(@class,'edit-buttons')]/button[contains(@class,'save')]")

  def add_new_lead(lead)
    self.first_name = lead.first_name
    self.last_name = lead.last_name
    self.company = lead.company
    self.title = lead.title
    self.email = lead.email
    save
  end

end