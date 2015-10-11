require 'rails_helper'

feature 'user edits event', %{
  As a signed in user
  I want to edit my event
  So that if information is old I can update it
} do

  scenario 'edits event succcessfully' do
    user = FactoryGirl.create(:user)
    event = FactoryGirl.build(:event)
    sign_in(user)

    click_on 'Create Event'

    fill_in "Title", with: event.title
    fill_in "Description", with: event.description
    fill_in "Image Url", with: event.image_url

    click_on "Submit"

    expect(page).to have_content("Event Added!")
    click_on event.title

    click_on "Edit Event"
    fill_in "Title", with: "house party"
    click_on "Submit"
    expect(page).to have_content("Event updated")
    expect(page).to have_content("house party")
  end

  scenario 'edits event unsucccessfully' do
    user = FactoryGirl.create(:user)
    event = FactoryGirl.build(:event)
    sign_in(user)

    click_on 'Create Event'

    fill_in "Title", with: event.title
    fill_in "Description", with: event.description
    fill_in "Image Url", with: event.image_url

    click_on "Submit"

    expect(page).to have_content("Event Added!")
    click_on event.title

    click_on "Edit Event"
    fill_in "Title", with: ""
    click_on "Submit"
    expect(page).to have_content("Title can't be blank")
    expect(page).to have_content event.description
  end
end
