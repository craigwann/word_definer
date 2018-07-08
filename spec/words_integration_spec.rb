require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('1-int word/definition path', {:type => :feature}) do
  it('processes the user entry and returns whether word is entered') do
    Word.clear()
    visit('/')
    fill_in('word', :with => 'gravity')
    fill_in('definition', :with => 'pulls you down')
    click_button('Add Word')
    expect(page).to have_content('gravity')
  end
end
