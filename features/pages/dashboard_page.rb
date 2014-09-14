require_relative 'navigation_panel'

class DashboardPage
  include PageObject
  include NavigationPanel

  direct_url "#{FigNewton.base_url}/sales"

end