require 'rails_helper'

feature 'user searches for results', %{
  As a signed up user
  I want to search anything on the app
  So that I can see if it exists and where
} do

  scenario 'searches successfully' do
    user = FactoryGirl.create(:user)
    event = FactoryGirl.create(:event)
    sign_in(user)

    fill_in "search", with: event.title
    click_on "Search"
    expect(page).to have_content("Search Results")

    expect(page).to have_content(event.title)
    expect(page).to_not have_content("No Results")
  end

  scenario 'searches for something not in database' do
    user = FactoryGirl.create(:user)
    sign_in(user)

    fill_in "search", with: "captain hook"
    click_on "Search"

    expect(page).to have_content("Search Results")
    expect(page).to have_content("No Results")
  end
end
