require 'rails_helper'

feature 'user creates comment', %{
  As a signed up user
  I want to create new comment
  So that other users can see what I think of the event
} do
  scenario 'edits comment succcessfully' do
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
    click_on "Edit"
    fill_in "Body", with: "I can't make it"
    click_on "Submit"
    expect(page).to have_content("I can't make it")
  end

  scenario 'deletes comment succcessfully' do
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
    click_on "Delete"

    expect(page).to_not have_content("I'll be there!")
    expect(page).to have_content("Comment deleted")
  end
end
