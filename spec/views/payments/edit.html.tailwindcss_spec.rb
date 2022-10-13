require 'rails_helper'

RSpec.describe 'payments/edit', type: :view do
  before(:all) do
    @user = create(:user)
    @category = Category.create!(user: @user, name: 'Category', icon: 'icon')
  end
  let(:payment) do
    Payment.create!(
      user: @user,
      name: 'MyString',
      amount: 1.5,
      categories: [@category]
    )
  end

  before(:each) do
    assign(:payment, payment)
  end

  it 'renders the edit payment form' do
    render

    assert_select 'form[action=?][method=?]', payment_path(payment), 'post' do
      
      assert_select 'input[name=?]', 'payment[name]'

      assert_select 'input[name=?]', 'payment[amount]'
    end
  end
end
