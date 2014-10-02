require_relative 'unshred_tag'
require 'capybara/dsl'


class Unshred::Tag::PageObject
  include Capybara::DSL

  attr_accessor :world

  def trait
    not_defined_error = 'You should provide a distinguishing locator for the page.'
    raise not_defined_error
  end

  def initialize(world)
    self.world = world
  end

  def await(options={})
    awaiting_error = "The awaited '#{self.class}' is not present by #{trait}."
    raise awaiting_error unless page.has_xpath? trait, options
    self
  end
end
