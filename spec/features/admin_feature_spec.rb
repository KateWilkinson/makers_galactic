require 'rails_helper'

feature 'Checking bookings' do
  scenario 'landing on admin homepage' do
    visit '/admins'
    expect(page).to have_content 'Flights'
  end

  scenario 'before landing on admin page should be asked for password' do
    click_link 'Admin'
    expect(page).to eq '/admins/password'
    expect(page).to have_selector 'input'
  end
end
