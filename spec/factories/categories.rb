FactoryBot.define do
  factory :category do
    sequence(:name) {|n| "Category #{n}"}
    icon {'https://www.flaticon.com/free-icon/travel_826070?term=travel&page=1&position=2&page=1&position=2&related_id=826070&origin=search'}
    
    user { association :user }
  end
end
