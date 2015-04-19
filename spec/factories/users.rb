FactoryGirl.define do
  factory :user do
    name -> { Faker::Internet.user_name }.call
    email -> { Faker::Internet.free_email }.call
    password Faker::Internet.password(8).call
  end
end
