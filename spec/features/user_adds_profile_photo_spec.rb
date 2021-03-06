require "rails_helper"

feature 'user adds profile pic', %{
  As a user
  I want to be able to a a profile pic
  So that others can recognize me
} do

  scenario "adds profile pic succcessfully" do
    user = FactoryGirl.create(:user)
    sign_in(user)
    visit root_path
    click_on "Edit Profile"

    attach_file "Profile Photo",
      "#{Rails.root}/spec/support/images/example_photo.jpg"

    fill_in "Current password", with: user.password
    click_on "Update"

    expect(page).to have_content("Your account has been updated successfully.")
    expect(page).to have_css("img[src*='example_photo.jpg']")
  end
end
