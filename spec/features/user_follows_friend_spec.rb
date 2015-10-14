require 'rails_helper'

feature 'user follows friend', %{
  As a signed up user
  I want to follow friends
  So that I can see their name
  when I look at an event they are going to
} do
  scenario 'sees friend in find friends page' do
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)

    sign_in(user1)
    click_on "Find Friends"

    expect(page).to have_content(user2.username)
  end

  scenario 'follows friend in find-friends page' do
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)

    sign_in(user1)

    click_on "Find Friends"
    first('.user').click_link('Add Friend')

    expect(page).to have_content(user1.username)
    expect(page).to have_content(user2.username)
    expect(page).to have_content("Added Friend")
  end

  scenario 'unsucccessfully trys to follows someone they already follow' do
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)

    sign_in(user1)

    click_on "Find Friends"

    click_link('Add Friend')

    expect(page).to have_content(user1.username)
    expect(page).to have_content(user2.username)
    expect(page).to have_content("Added Friend")

    visit root_path
    click_on "Find Friends"
    expect(page).to_not have_content(user2.username)
  end

  scenario 'unfollows friend' do
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)

    sign_in(user1)

    click_on "Find Friends"
    first('.user').click_link('Add Friend')

    click_on "My Profile"
    click_link('Unfollow')

    expect(page).to have_content(user1.username)
    expect(page).to_not have_content(user2.username)
    expect(page).to have_content("Unfolled Friend")
  end

  scenario 'sees friend in event show page' do
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)

    user3 = FactoryGirl.create(:user)
    event = FactoryGirl.create(:event, owner: user3)

    sign_in(user2)
    visit root_path
    click_on event.title
    click_on "Join Event"
    click_on "Sign Out"

    sign_in(user1)
    visit root_path

    click_on event.title

    expect(page).to have_content(user2.username)
    expect(page).to have_content(user3.username)
  end
end
