require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the add a word route", {:type => :feature}) do
  it("takes the user to a page where they can enter a word") do
    visit('/')
    click_link("Add A Word")
  end
end

describe("the create a word route", {:type => :feature}) do
  it("takes the user to a page where they can see their entered word") do
    visit('/')
    click_link("Add A Word")
    fill_in("name", :with => "Hash")
    click_button("Add")
    expect(page).to have_content("Hash")
  end

  it("allows a user to view their list of words") do
    visit('/')
    expect(page).to have_content("Here are your words:")
  end
end

describe("the add a defintion route", {:type => :feature}) do
  it("takes the user to a page where they can enter a deifintion") do
    visit('/')
    click_link("Add A Word")
    fill_in("name", :with => "Object")
    click_button("Add")
    click_link("Add a definition")
    expect(page).to have_content("Add a definition")
  end
end
