require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the definition path', {:type => :feature}) do
  it('adds a word and definition to the list of saved definitions') do
    visit('/')
    fill_in('definition1', :with => "A Hash is a dictionary-like collection of unique keys and their values.")
    click_button('Add')
    expect(page).to have_content("Your word and definition have been successfully submitted!")
  end
end
