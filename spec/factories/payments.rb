FactoryBot.define do
  factory :payment do
    name { 'Expense' }
    amount { 250.00 }
    user { association :user }
    categories { [create(:category)] }
  end
end
