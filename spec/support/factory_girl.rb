require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "users#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
    username 'bobbydroptables'
    role 'member'
  end

end
