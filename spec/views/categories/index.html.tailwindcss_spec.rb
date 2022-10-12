require 'rails_helper'

RSpec.describe 'categories/index', type: :view do
  before(:all) do
    @user = create(:user)
  end
  before(:each) do
    assign(:categories, [
             Category.create!(
               user: @user,
               name: 'Name',
               icon: 'Icon'
             ),
             Category.create!(
               user: @user,
               name: 'Name',
               icon: 'Icon'
             )
           ])
  end

  it 'renders a list of categories' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Icon'.to_s), count: 2
  end
end
