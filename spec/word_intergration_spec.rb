require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word path', {:type => :feature}) do
  it('adds a word to the list of saved words') do
    visit('/')
    fill_in('word', :with => "Hash")
    click_button('Add')
    expect(page).to have_content("Your word has been successfully submitted!")
  end
end
