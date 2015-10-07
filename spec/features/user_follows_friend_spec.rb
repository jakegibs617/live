require 'rails_helper'

feature 'user follows friend', %{
  As a signed up user
  I want to follow friends
  So that I can see their name
  when I look at an event they are going to
} do
  scenario 'sees friend in event show page' do
    event = FactoryGirl.create(:event)

    sign_in(event.user)
    visit users_path

    expect(page).to have_content("Add Friend")
  end
end
