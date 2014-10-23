require_relative 'page_object'

class WorkspacePage < Unshred::Tag::PageObject
  def initialize(a_world)
    self.world = a_world
    @elements = {}
    @elements[:logo] = "//img[@id='logo']"
    @elements[:instructions_dialogue_trait] = "//button[@class='mfp-close']"
    @elements[:dialogue_close_button_title] = 'Close (Esc)'
  end

  def trait
    @elements[:logo]
  end

  def instructions_dialogue_displayed?
    page.has_xpath? @elements[:instructions_dialogue_trait]
  end

  def dismiss_instructions_dialogue
    page.click_button @elements[:dialogue_close_button_title]
  end

end
