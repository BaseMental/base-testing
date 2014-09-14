class LoginPage
  include PageObject

  page_url "#{FigNewton.base_url}/sales"

  text_field(:email, :id => 'user_email')
  text_field(:password, :id => 'user_password')
  button(:login, :xpath => "//button[i[contains(@class, 'icon-lock')]]")

  def login_with(email, password)
    self.email = email
    self.password = password
    login
  end

end