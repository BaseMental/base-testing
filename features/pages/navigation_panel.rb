module NavigationPanel
  include PageObject

  link(:go_to_leads, :href => "/leads")
  link(:user_dd, :href => "#user-dd")

  private
  link(:settings, :href => "/settings/profile")

  public
  def open_settings
    user_dd
    settings
  end

end