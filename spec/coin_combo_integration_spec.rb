require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('/', {:type => :feature}) {
  it('displays home page') {
    visit('/')
    expect(page).to have_content("Coin Combo!")
  }
}
