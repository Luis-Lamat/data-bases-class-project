require 'rails_helper'

RSpec.describe "spare_parts/show", :type => :view do
  before(:each) do
    @spare_part = assign(:spare_part, SparePart.create!(
      :name => "Name",
      :provider => "Provider",
      :cost => 1.5,
      :extra_cost => 1.5,
      :quantity => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Provider/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
  end
end
