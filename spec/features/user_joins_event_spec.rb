require 'rails_helper'

feature 'user joins event', %{
  As a signed up user
  I want to join an event
  So that I can see others who have joined
} do

  scenario 'joins event succcessfully' do
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)
    event = FactoryGirl.create(:event, owner: user1)

    sign_in(user2)

    visit root_path

    click_on event.title

    click_on "Join Event"

    expect(page).to have_content("You have joined this event.")
    expect(page).to have_content(event.title)
  end
end
