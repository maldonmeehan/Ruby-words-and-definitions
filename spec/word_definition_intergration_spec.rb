require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the add word route', {:type => :feature}) do
  it("takes the user to a page where they can see their entered word") do
    visit('/')
    click_link('Add a Word')
    fill_in('name', :with => 'Hash')
    click_button('Add')
    expect(page).to have_content('Hash')
  end

  it('allows a user to view their list of words') do
    visit('/')
    expect(page).to have_content('Hash')
  end
end

describe('the add definition route', {:type => :feature}) do
  it('clicks on the add a definition link and displays the definition that has been added') do
    visit('/')
    click_link('Hash')
    expect(page).to have_content('Hash')
    click_link('Add a Definition')
    expect(page).to have_content('Add a definition')
    fill_in('definition-one', :with => 'A Hash is a dictionary-like collection of unique keys and their values.')
    click_button('Add Definition')
    expect(page).to have_content('A Hash is a dictionary-like collection of unique keys and their values.')
  end

end
