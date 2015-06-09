Given(/^I am on the i100independent news site page$/) do
  visit 'http://i100.independent.co.uk/'
end

And(/^I click on the login button$/) do
  sleep(3)
  page.find(".logged-out-icon").click

end

And(/^I choose a social network button$/) do

  page.find('div[title*="Facebook"]').click
  switch_to_new_pop_up
  fill_in('Email', :with => 'deniseagathocleous@gmail.com')
  fill_in('Password', :with => 'Testing123')
  sleep(3)
  page.find('#loginbutton').click
  switch_to_the_main_window
end

Then(/^I am successfully logged in$/) do

  page.find(".logged-in-icon").click
  expect(page).to have_xpath('//div[@class="nickname"]')
end

When (/^I select an article to view article details$/)do
     @id = 'x1NzOUf09g'
     page.find('li[data-id*="x1NzOUf09g"] a').click
end

Then (/^details page of the corresponding article is displayed$/)do
  expect(current_url).to end_with(@id)
end

And (/^I select home button logo$/) do
  page.find('[class*="logo_i100_beta"]').click
end

Then(/^I should be on the home page$/) do
  expect(current_url).to end_with('discover')
end