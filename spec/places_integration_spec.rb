require('capybara/rspec')
require('./app')
require('launchy')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

include Capybara::DSL

describe('path for creating and adding to a destination list') do
  it('processes user input and creates list') do
    visit('/')
    fill_in("destination", :with => "New York")
    click_button('Add Location')
    expect(page).to have_content("You have successfully added to your destination list!")
  end
end

describe('path for returning to /places and viewing list') do
  it('returns user to list') do
    visit('/places')
    click_link('Get Back!')
    expect(page).to have_content('Places I Have Been')
  end
end
