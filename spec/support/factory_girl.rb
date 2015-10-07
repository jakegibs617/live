require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "users#{n}@example.com" }
    sequence(:username) { |n| "billy#{n}" }
    password 'password'
    password_confirmation 'password'
    role 'member'
  end

  factory :event do
    sequence(:title) { |n| "Bar#{n}" }
    image_url 'http://i.imgur.com/CWqBQuy.jpg'
    description 'badd assss cant wait to go'
    user
  end

  factory :comment do
    image_url 'http://i.imgur.com/CWqBQuy.jpg'
    body 'badd assss cant wait to go'
    rating 5
    user
    event
  end

  # factory :friendship do
  #   friend_id 8
  #   user
  # end
end
