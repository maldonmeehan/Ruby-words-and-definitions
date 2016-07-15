require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

# describe('the word path', {:type => :feature}) do
#   it("takes the user to a page where they can enter a word and definition") do
#     visit('/')
#     click_button('Add New Word')
#     expect(page).to have_content("Add a Word")
#   end
# end
