require 'rails_helper'

RSpec.describe "categories/show", type: :view do
  before(:each) do
    assign(:category, Category.create!(
      user: nil,
      name: "Name",
      icon: "Icon"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Icon/)
  end
end