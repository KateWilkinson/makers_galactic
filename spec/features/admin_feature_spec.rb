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

  scenario 'if no bookings total revenue should be £0' do
    visit '/admins'
    expect(page).to have_content 'Total Revenue: £0'
  end

  scenario 'if multiple bookings exist, should see total revenue' do
    Ticket.create(name:'Lucy', price:40)
    Ticket.create(name:'Kate', price:10)
    visit '/admins'
    expect(page).to have_content 'Total Revenue: £50'
  end

  scenario 'should be able to set ticket price' do
    visit '/admins'
    fill_in 'price', with: 50
    click_button 'submit'
    expect(page).to have_content 'Ticket price set'
  end
end
