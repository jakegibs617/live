require 'rails_helper'

feature 'user deletes event', %{
  As a signed in user
  I want to delete my event
  So that if the event got cancelled I can remove the event
} do

  scenario 'deletes event succcessfully' do
    user = FactoryGirl.create(:user)
    event = FactoryGirl.build(:event)
    sign_in(user)

    click_on 'Create Event'

    fill_in "Title", with: event.title
    fill_in "Description", with: event.description
    fill_in "Image Url", with: event.image_url
    fill_in "Address", with: event.address
    fill_in "City", with: event.city
    fill_in "State", with: event.state
    
    click_on "Submit"

    expect(page).to have_content("Event Added!")
    click_on event.title

    click_on "Delete Event"

    expect(page).to have_content("Event deleted")
    expect(page).to_not have_content event.title
  end
end
