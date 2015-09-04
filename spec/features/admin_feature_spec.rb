require 'rails_helper'

feature 'Checking bookings' do
  scenario 'landing on admin homepage' do
    visit '/'
    click_link 'Admin'
    expect(page).to have_content 'Flights'
  end

  scenario 'before landing on admin page should be asked for password' do
    pending
    visit '/'
    click_link 'Admin'
    expect(page).to eq '/admin_password'
    expect(page).to have_selector 'input'
  end

  scenario 'admin should be able to see total revenue' do
    visit '/admins'
    expect(page).to have_content 'Total Revenue: £'
  end
end
