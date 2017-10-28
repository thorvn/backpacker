FactoryGirl.define do
  sequence :email do |n|
    "name.#{n}@backpacker.de"
  end
  factory :user , class: User do
    password 12345678
    email
  end
end
