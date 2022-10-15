require 'rails_helper'

RSpec.describe User, type: :model do
  subject { create(:user) }

  it 'should not allow empty name' do
    expect(subject).to be_valid
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
