require 'rails_helper'

RSpec.describe 'categories/edit', type: :view do
  before(:all) do
    @user = create(:user)
  end
  let(:category) do
    Category.create!(
      user: @user,
      name: 'MyString',
      icon: 'MyString'
    )
  end

  before(:each) do
    assign(:category, category)
  end

  it 'renders the edit category form' do
    render

    assert_select 'form[action=?][method=?]', category_path(category), 'post' do
      assert_select 'input[name=?]', 'category[name]'

      assert_select 'input[name=?]', 'category[icon]'
    end
  end
end
