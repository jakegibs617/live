require 'rails_helper'

feature 'user leaves event', %{
  As a signed up user
  I want to leave an event
  So that I can change my mind if I choose
} do

  scenario 'leaves event succcessfully' do
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)
    event = FactoryGirl.create(:event, owner: user1)

    sign_in(user2)

    visit root_path

    click_on event.title

    click_on "Join Event"
    click_on "Leave Event"

    expect(page).to have_content("Left event.")
    expect(page).to have_content(event.title)
  end
end
