require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'capybara/selenium/node'

module Helpers
  def current_url
    driver.current_url
  end
  def switch_to_new_pop_up
    # page.driver.browser.switch_to.window
    # (page.driver.browser.window_handles.last)
    puts "#{page.driver.browser.window_handles}"
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  end
  def switch_to_the_main_window
    # page.driver.browser.switch_to.window
    # (page.driver.browser.window_handles.last)
    page.driver.browser.switch_to.window(page.driver.browser.window_handles[0])
  end
  def close_active_window
    page.driver.browser.close
    page.driver.browser.switch_to.window(page.driver.browser.window_handles[0])
  end
end
World(Helpers)


