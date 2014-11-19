require 'rails_helper'

RSpec.describe "spare_parts/edit", :type => :view do
  before(:each) do
    @spare_part = assign(:spare_part, SparePart.create!(
      :name => "MyString",
      :provider => "MyString",
      :cost => 1.5,
      :extra_cost => 1.5,
      :quantity => ""
    ))
  end

  it "renders the edit spare_part form" do
    render

    assert_select "form[action=?][method=?]", spare_part_path(@spare_part), "post" do

      assert_select "input#spare_part_name[name=?]", "spare_part[name]"

      assert_select "input#spare_part_provider[name=?]", "spare_part[provider]"

      assert_select "input#spare_part_cost[name=?]", "spare_part[cost]"

      assert_select "input#spare_part_extra_cost[name=?]", "spare_part[extra_cost]"

      assert_select "input#spare_part_quantity[name=?]", "spare_part[quantity]"
    end
  end
end
