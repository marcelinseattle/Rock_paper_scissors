require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the rock,paper,scissor result path', {:type => :feature}) do
  it('processes the user entry and returns the result of their rock,paper,scissors game') do
    visit('/')
    select('Rock', from: 'title1')
    select('Rock', from: 'title2')
    click_button('Send')
    expect(page).to have_content('Draw Game')
  end
end
