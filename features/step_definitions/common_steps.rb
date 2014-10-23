Given /^I am on the 'Warm Welcome' page$/ do
  visit 'http://dev.unshred.it/'
  @page = WarmWelcomePage.new(self).await
end

Given /^I am logged in as a '(.*)'$/ do |a_user|
  target_url = page.current_url

  create_users = <<javascript
  var XHR = new XMLHttpRequest();
  XHR.open('POST', '#{page.current_host}/fixtures/create_users');
  XHR.send(new FormData());
javascript

  login_as_user = <<javascript
  var XHR = new XMLHttpRequest();
  XHR.open('POST', '#{page.current_host}/fixtures/login_user/#{a_user}');
  XHR.send(new FormData());
javascript
  page.execute_script create_users; sleep 1
  page.execute_script login_as_user; sleep 1
  visit target_url
  @page = WorkspacePage.new(self).await
end

Given /^Instructions dialogue appears$/ do
  expect(@page.instructions_dialogue_displayed?).to be true
end

Given /^I dismiss the instructions dialogue$/ do
  @page.dismiss_instructions_dialogue
end
