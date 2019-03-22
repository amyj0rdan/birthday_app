require_relative '../../app.rb'

feature 'wish user happy birthday' do
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
end
