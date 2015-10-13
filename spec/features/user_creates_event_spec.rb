require 'rails_helper'

feature 'user creates event', %{
  As a signed up user
  I want to create a new event
  So that other users can join rate and review it
} do

  scenario 'creates event succcessfully' do
    event = FactoryGirl.build(:event)
    user = FactoryGirl.create(:user)
    visit new_event_path
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
    expect(root_path).to eq(current_path)
  end

  scenario 'create unsucccessful event, without title' do
    event = FactoryGirl.create(:event)
    user = FactoryGirl.create(:user)

    sign_in(user)

    click_on 'Create Event'

    fill_in "Description", with: event.description
    fill_in "Image Url", with: event.image_url

    click_on "Submit"
    expect(page).to have_content("Title can't be blank")
  end
end
