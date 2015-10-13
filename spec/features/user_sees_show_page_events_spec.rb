require 'rails_helper'

feature 'user visits home page', %{
  As a signed up user
  I want to see all events
  So that I can join rate and review it
} do

  scenario 'sees event succcessfully' do
    event = FactoryGirl.build(:event)
    user = FactoryGirl.create(:user)
    visit root_path
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

  scenario 'has to sign in to see events' do
    event = FactoryGirl.create(:event)
    visit root_path

    expect(page).to_not have_content(event.title)
  end
end
