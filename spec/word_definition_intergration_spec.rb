require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word route', {:type => :feature}) do
  it("takes the user to a page where they can enter a word") do
    visit('/')
    click_button("Add a Word")
    fill_in("name", :with => "Hash")
    expect(page).to have_content("Hash")
  end
end
