require_relative '../../app.rb'

feature 'raises error if form completed incorrectly' do
  scenario 'user only enters their name' do
    visit('/')
    page.fill_in 'name', with: 'Amy'
    page.click_button('Go!')
    expect(page).to have_content('Try again!')
  end
end
