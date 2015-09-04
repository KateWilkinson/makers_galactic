require 'rails_helper'

feature 'Booking a flight' do
  scenario 'landing on homepage' do
    visit '/flights'
    expect(page).to have_content 'Book a flight'
  end
end
