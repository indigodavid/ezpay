require 'rails_helper'

RSpec.describe 'splash/index', type: :view do
  it 'renders logo' do
    render
    expect(rendered).to match(/ezPay/)
  end
end
