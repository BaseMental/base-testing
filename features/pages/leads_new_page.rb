class LeadsNewPage
  include PageObject

  direct_url "#{FigNewton.base_url}/leads/new"

  text_field(:first_name, :id => 'lead-first-name')
  text_field(:last_name, :id => 'lead-last-name')
  text_field(:company, :id => 'lead-company-name')
  text_field(:title, :id => 'lead-title')
  text_field(:email, :id => 'lead-email')
  button(:save, :xpath => "//div[contains(@class,'edit-buttons')]/button[contains(@class,'save')]")

  #TODO: default data handling can be improved
  DEFAULT_DATA = {
      'first_name' => Faker::Name.first_name,
      'last_name' => Faker::Name.last_name,
      'company' => Faker::Company.name,
      'title' => Faker::Lorem.sentence,
      'email' => Faker::Internet.email
  }

  def add_new_lead(data={})
    data = DEFAULT_DATA.merge(data)
    self.first_name = data['first_name']
    self.last_name = data['last_name']
    self.company = data['company']
    self.title = data['title']
    self.email = data['email']
    save
    data
  end

end