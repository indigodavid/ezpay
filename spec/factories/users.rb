FactoryBot.define do
  factory :user do
    name { 'David Vera' }
    email { 'david@gmail.com' }
    password { '123456' }
    confirmed_at { 1.day.ago }
  end
end
