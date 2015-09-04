require 'rails_helper'

feature 'Checking bookings' do
  scenario 'landing on admin homepage' do
    visit '/admins'
    expect(page).to have_content 'Flights'
  end
end
