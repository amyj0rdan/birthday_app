require_relative '../../app.rb'

feature 'welcome page' do
  scenario 'says Hello there!' do
    visit('/')
    expect(page).to have_content 'Hello there!'
  end

  scenario "asks What's your name?" do
    visit('/')
    expect(page).to have_content "What's your name?"
  end

  scenario 'user can fill in name' do
    visit('/')
    page.fill_in 'name', with: 'Amy'
  end

  scenario "asks When's your birthday?" do
    visit('/')
    expect(page).to have_content "When's your birthday?"
  end

  scenario 'user can fill in birthday' do
    visit('/')
    page.fill_in 'day', with: '10'
  end
end
