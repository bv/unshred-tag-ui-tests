Given /^I am on the 'Warm Welcome' page$/ do
  visit 'http://dev.unshred.it/'
  @page = WarmWelcomePage.new(self).await
end
