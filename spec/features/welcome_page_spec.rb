require_relative '../../app.rb'

feature 'welcome page' do
  scenario 'says Hello there!' do
    visit('/')
    expect(page).to have_content 'Hello there!'
  end
end
