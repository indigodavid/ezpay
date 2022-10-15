require 'rails_helper'

RSpec.describe 'payments/show', type: :view do
  before(:all) do
    @user = create(:user)
    @category = Category.create!(user: @user, name: 'Category', icon: 'icon')
  end
  before(:each) do
    assign(:payment, Payment.create!(
                       user: @user,
                       name: 'Name',
                       amount: 2.5,
                       categories: [@category]
                     ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
  end
end
