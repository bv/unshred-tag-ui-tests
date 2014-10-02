require_relative 'page_object'

class WarmWelcomePage < Unshred::Tag::PageObject

  @elements = {}
  @elements[:facebook_button] = ''
  @elements[:twitter_button] = ''
  @elements[:gmail_button] = ''
  @elements[:vkontakte_button] = ''

  def trait
    "//div[@id='warm-welcome']"
  end

  def click_facebook_sign_in
    page.click_link  @elements[:facebook_button]
  end

  def click_twitter_sign_in
    page.click_link  @elements[:twitter_button]
  end

  def click_gmail_sign_in
    page.click_link  @elements[:gmail_button]
  end

  def click_vkontakte_sign_in
    page.click_link  @elements[:vkontakte_button]
  end

end
