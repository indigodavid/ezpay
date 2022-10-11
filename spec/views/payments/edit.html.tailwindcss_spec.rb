require 'rails_helper'

RSpec.describe "payments/edit", type: :view do
  before(:all) do
    @user = User.new(name: 'David', email: 'david@gmail.com', password: '123456', password_confirmation: '123456')
    @user.skip_confirmation!
    @user.save
    @category = Category.create!(user: @user, name: 'Category', icon: 'icon')
  end
  let(:payment) {
    Payment.create!(
      user: @user,
      name: "MyString",
      amount: 1.5,
      categories: [@category]
    )
  }

  before(:each) do
    assign(:payment, payment)
  end

  it "renders the edit payment form" do
    render

    assert_select "form[action=?][method=?]", payment_path(payment), "post" do

      assert_select "input[name=?]", "payment[user_id]"

      assert_select "input[name=?]", "payment[name]"

      assert_select "input[name=?]", "payment[amount]"
    end
  end
end
