require 'rails_helper'

RSpec.describe 'payments/index', type: :view do
  before(:all) do
    @user = create(:user)
    @category = Category.create!(user: @user, name: 'Category', icon: 'icon')
  end

  before(:each) do
    assign(:payments, [
             Payment.create!(
               user: @user,
               name: 'Name',
               amount: 2.5,
               categories: [@category]
             ),
             Payment.create!(
               user: @user,
               name: 'Name',
               amount: 2.5,
               categories: [@category]
             )
           ])
  end

  it 'renders a list of payments' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
  end
end
