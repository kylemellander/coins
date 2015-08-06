require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('/', {:type => :feature}) {
  it('displays home page') {
    visit('/')
    expect(page).to have_content("Coin Combo!")
  }

  it('displays result after coin input') {
    visit('/')
    fill_in('money', :with => '2.25')
    click_button('Make Change For This')
    expect(page).to have_content("Your change is 9 quarters.")
  }
}
