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
describe('2-int word/definition path', {:type => :feature}) do
  it('processes the user entry and returns whether word is entered') do
    Word.clear()
    visit('/')
    fill_in('word', :with => 'dog')
    fill_in('definition', :with => 'four legged mammal')
    click_button('Add Word')
    click_link('dog')
    fill_in('definition_add', :with => 'woof')
    click_button('Add definition')
    expect(page).to have_content('woof')
  end
end
