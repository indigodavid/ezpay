require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'David', email: 'david@gmail.com', password: '123456', password_confirmation: '123456') }

  it 'should not allow empty name' do
    expect(subject).to be_valid
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
