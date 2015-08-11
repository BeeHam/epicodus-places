require('capybara/rspec')
require('./app')
require('launchy')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

include Capybara::DSL

describe('path for creating and adding to a destination list') do
  it('processes user input and creates list') do
    visit('/')
    fill_in('location', :with => "New York")
    click_button('Submit')
    expect(page).to have_content("You have successfully added to your destination list!")
  end
end
