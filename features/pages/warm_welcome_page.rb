require_relative 'page_object'

class WarmWelcomePage < Unshred::Tag::PageObject
  def initialize(a_world)
    self.world = a_world
    @elements = {}
    @elements[:sign_in_set] = "//ul[@id='signin']"
    @elements[:facebook_button] = "//a[@class='facebook']"
    @elements[:twitter_button] = "//a[@class='twitter']"
    @elements[:gmail_button] = "//a[@class='googleplus']"
    @elements[:vkontakte_button] = "//a[@class='vkontakte']"
  end

  def trait
    "//div[@id='warm-welcome']"
  end

  def facebook_signin_option?
    page.has_xpath? @elements[:facebook_button]
  end

  def twitter_signin_option?
    page.has_xpath? @elements[:twitter_button]
  end

  def gmail_signin_option?
    page.has_xpath? @elements[:gmail_button]
  end

  def vkontakte_signin_option?
    page.has_xpath? @elements[:vkontakte_button]
  end

  def click_facebook_sign_in
    page.click_link @elements[:facebook_button]
  end

  def click_twitter_sign_in
    page.click_link @elements[:twitter_button]
  end

  def click_gmail_sign_in
    page.click_link @elements[:gmail_button]
  end

  def click_vkontakte_sign_in
    page.click_link @elements[:vkontakte_button]
  end

end
