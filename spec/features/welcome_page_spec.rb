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

  scenario "asks When's your birthday?" do
    visit('/')
    expect(page).to have_content "When's your birthday?"
  end

  scenario 'user birthday is today' do
    time = Time.now
    day = time.day
    month = time.strftime("%B")
    visit('/')
    page.fill_in 'name', with: 'Amy'
    page.fill_in 'day', with: day
    page.select(month, from: 'month')
    page.click_button('Go!')
    expect(page).to have_content('Happy birthday Amy!')
  end

  scenario 'user birthday is in 7 days' do
    time = Time.now
    day = time.day + 7
    month = time.strftime("%B")
    visit('/')
    page.fill_in 'name', with: 'Amy'
    page.fill_in 'day', with: day
    page.select(month, from: 'month')
    page.click_button('Go!')
    expect(page).to have_content('Your birthday is in 7 days, Amy!')
  end

  scenario 'user birthday was yesterday' do
    time = Time.now
    day = time.day - 1
    month = time.strftime("%B")
    visit('/')
    page.fill_in 'name', with: 'Amy'
    page.fill_in 'day', with: day
    page.select(month, from: 'month')
    page.click_button('Go!')
    expect(page).to have_content('Your birthday is in 364 days, Amy!')
  end
end
