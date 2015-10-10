require 'rails_helper'

feature 'admin visits users index', %{
  As an admin
  I want to visit the users index
  So that I can see and modify all users
} do

  scenario 'admin visits users index' do
    user1 = FactoryGirl.create(:user, role: 'admin')
    user2 = FactoryGirl.create(:user)
    sign_in(user1)
    visit users_path

    expect(page).to have_content(user1.username)
    expect(page).to have_content(user2.username)
    expect(page).to have_content("Delete This User")
    expect(page).to have_content("Make Admin")
  end

  scenario 'admin deletes user' do
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user, role: 'admin')

    sign_in(user2)
    visit users_path

    expect(page).to have_content(user2.username)

    first('.user').click_link('Delete This User')

    expect(page).to_not have_content(user1.email)
  end

  scenario 'admin makes another user an admin' do
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user, role: 'admin')

    sign_in(user2)
    visit users_path
    expect(page).to have_content(user1.username)
    first('.user').click_link('Make Admin')

    within (".admin-list-centered") do
      expect(page).to have_content("billy6")
      expect(page).to have_content("billy7")
    end
  end
end
