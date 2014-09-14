module IntroPopup
  include PageObject

  link(:skip_intro_link, :xpath => "//div[@id='reports-loader-skip-intro']/a[contains(@class,'gray')]")

  def skip_intro
    wait_until do
      skip_intro_link_element.visible?
    end
    skip_intro_link
  end

end