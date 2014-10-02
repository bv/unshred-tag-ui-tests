Given /^there are sign in options:$/ do |options|
  options.raw.flatten.each do |opt|
    expect(@page.send :"#{opt.downcase}_signin_option?").to be true
  end
end
