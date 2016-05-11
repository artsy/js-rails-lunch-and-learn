require 'spec_helper'

feature 'Creating a new widget', js: true, type: :feature do
  scenario 'user creates a new widget' do
    page.visit '/widgets'
    # expect(page).to have_selector('.input')
    puts page.html
    puts page.driver.console_messages
    fill_in '.input', with: 'FooBar'
    click_button 'Submit'
    expect(page).to have_content 'FooBar'
  end
end
