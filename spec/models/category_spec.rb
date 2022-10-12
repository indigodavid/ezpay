require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:all) do
    @user = create(:user)
  end

  subject {
    Category.new(
      user: @user,
      name: "MyString",
      icon: "MyString"
    )
  }

  it 'should be valid with user, name and icon' do
    expect(subject).to be_valid
  end

  it 'should not allow user to be empty' do
    subject.user = nil
    expect(subject).to_not be_valid
  end
  
  it 'should not allow name to be empty' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should not allow icon to be empty' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end
end
