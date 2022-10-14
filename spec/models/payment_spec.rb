require 'rails_helper'

RSpec.describe Payment, type: :model do
  before(:all) do
    @user = create(:user)
    @category = create(:category, user: @user)
  end

  subject do
    create(:payment, categories: [@category])
  end

  it 'should be valid with user, name, amount, and at least one category' do
    expect(subject).to be_valid
  end

  it 'should not be valid if user is not present' do
    subject.user = nil
    expect(subject).to_not be_valid
  end

  it 'should not be valid if name is not present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should not be valid if amount is not present, a string or negative' do
    subject.amount = nil
    expect(subject).to_not be_valid
    subject.amount = -2.5
    expect(subject).to_not be_valid
    subject.amount = '2.0m'
    expect(subject).to_not be_valid
    subject.amount = 2.0
    expect(subject).to be_valid
  end

  it 'should not be valid if categories is empty is not present' do
    subject.categories.delete(@category)
    expect(subject.categories.empty?).to be true
    expect(subject).to_not be_valid
  end

  it 'should allow more than one category and to remove the first one' do
    category2 = Category.create!(user: @user, name: 'Category', icon: 'icon')
    subject.categories << category2
    expect(subject).to be_valid
    subject.categories.delete(@category)
    expect(subject).to be_valid
    subject.categories.delete(category2)
    expect(subject).to_not be_valid
  end
end
