Given(/^I am on the BBC radio page$/) do
  visit 'http://www.bbc.co.uk/6music'
end

Then(/^All the links are there$/) do
  alice = {'tab-1' => 'on-air', 'tab-2' => 'highlights', 'tab-3' => 'latest-programmes', 'tab-4' => 'popular-programmes', 'tab-5' => 'collections'}
  alice.each_with_index { |conf, index|
    expect(page).to have_css "li[data-tab-type*='#{alice["tab-#{index+1}"]}']"

    page.find("li[data-tab-type*='#{alice["tab-#{index+1}"]}']").click
    puts alice["tab-#{index+1}"]
    sleep 3
  #   "#{alice["tab-#{index+1}"]}"
  }
end