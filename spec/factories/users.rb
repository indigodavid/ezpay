FactoryBot.define do
  factory :user do
    name { 'David Vera' }
    sequence(:email) {|n| "david#{n}@gmail.com" }
    password { '123456' }
    confirmed_at { 1.day.ago }
  end
end
