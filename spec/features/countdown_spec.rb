require_relative '../../app.rb'

feature 'tells user how many days until birthday' do
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
