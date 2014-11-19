require 'rails_helper'

RSpec.describe "spare_parts/index", :type => :view do
  before(:each) do
    assign(:spare_parts, [
      SparePart.create!(
        :name => "Name",
        :provider => "Provider",
        :cost => 1.5,
        :extra_cost => 1.5,
        :quantity => ""
      ),
      SparePart.create!(
        :name => "Name",
        :provider => "Provider",
        :cost => 1.5,
        :extra_cost => 1.5,
        :quantity => ""
      )
    ])
  end

  it "renders a list of spare_parts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Provider".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
