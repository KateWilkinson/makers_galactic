require 'rails_helper'

feature 'Booking a flight' do
  scenario 'landing on homepage a user can book a flight' do
    visit '/flights'
    expect(page).to have_content 'Seats available. Book a flight'
  end

  scenario 'landing on homepage a user cannot book a flight' do
    visit '/flights'
    expect(page).to have_content 'No seats available.'
  end

  scenario 'user should be able to fill in name' do
    visit '/flights'
    fill_in 'Name', with: 'John'
    click_button 'Book'
    expect(page).to have_content 'Your flight\'s been booked'
  end

  xscenario 'user should see price of seats' do
    visit '/flights'
    expect(page).to have_content "Each seat costs #{flight.ticket.price}"
  end
end
