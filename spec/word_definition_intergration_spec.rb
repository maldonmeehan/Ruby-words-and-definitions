require('capybara/rspec')
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
end

describe("the defintion route", {:type => :feature}) do
  it("takes the user to a page where they can enter a deifintion") do
    visit('/')
    click_link("Hash")
    # expect(page).to have_content("Hash")
    # click_link("Add A Definition")
  end
end
