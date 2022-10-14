FactoryBot.define do
  factory :category do
    sequence(:name) { |n| "Category #{n}" }
    icon { 'laptop' }

    user { association :user }

    payments { [] }
  end
end
