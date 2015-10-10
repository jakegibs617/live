# Failure/Error: click_on 'Bar'
#     ActionView::Template::Error:
#       undefined method `username' for nil:NilClass

# require 'rails_helper'
#
# feature 'user creates comment', %{
#   As a signed up user
#   I want to create new comment
#   So that other users can see what I think of the event
# } do
#   scenario 'creates comment succcessfully' do
#     event = FactoryGirl.create(:event)
#     user = FactoryGirl.create(:user)
#
#     sign_in(user)
#     visit root_path
#
#     click_on 'Bar'
#
#
#     click_on 'Add Comment'
#
#     choose 3
#
#     fill_in "Body", with: "I'll be there!"
#
#     click_on "Create Comment"
#
#     expect(page).to have_content("Comment added.")
#     expect(page).to have_content("I'll be there!")
#
#   end
#
#   scenario 'create unsucccessful comment, without rating' do
#     event = FactoryGirl.create(:event)
#     user = FactoryGirl.create(:user)
#
#     sign_in(event.user)
#
#     click_on event.title
#
#     click_on 'Add Comment'
#
#     fill_in "Body", with: "Test"
#
#     click_on "Create Comment"
#
#     expect(page).to have_content("Rating can't be blank")
#   end
#
#   scenario 'create unsucccessful comment, without description' do
#     event = FactoryGirl.create(:event)
#     user = FactoryGirl.create(:user)
#
#     sign_in(event.user)
#
#     click_on event.title
#
#     click_on 'Add Comment'
#
#     choose 3
#
#     fill_in "Body", with: ""
#
#     click_on "Create Comment"
#
#     expect(page).to have_content("Body can't be blank")
#   end
# end
