require 'rails_helper'

feature 'user creates comment', %{
  As a signed up user
  I want to create new comment
  So that other users can see what I think of the event
} do

  scenario 'creates comment succcessfully' do
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)
    event = FactoryGirl.create(:event, owner: user1)

    sign_in(user2)
    click_on event.title

    click_link "Add Comment"
    choose 3
    fill_in "Body", with: "I'll be there!"
    click_on "Create Comment"

    expect(page).to have_content("Comment added.")
    expect(page).to have_content("I'll be there!")
  end

  scenario 'create unsucccessful comment, without rating' do
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)
    event = FactoryGirl.create(:event, owner: user1)

    sign_in(user2)

    click_on event.title
    click_link "Add Comment"
    fill_in "Body", with: "Test"

    click_on "Create Comment"
    expect(page).to have_content("Rating can't be blank")
  end

  scenario 'create unsucccessful comment, without body' do
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)
    event = FactoryGirl.create(:event, owner: user1)

    sign_in(user2)

    click_on event.title
    click_link "Add Comment"

    choose 3

    click_on "Create Comment"
    expect(page).to have_content("Body can't be blank")
  end
end
