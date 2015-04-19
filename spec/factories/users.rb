FactoryGirl.define do
  factory :user do
    sequence :name do |i|
      "name#{i}"
    end

    sequence :email do |i|
      "email#{i}@gmail.com"
    end

    password "0"*8

    sequence :uid do |i|
      i
    end
  end
end
