require 'rails_helper'

RSpec.describe "spare_parts/new", :type => :view do
  before(:each) do
    assign(:spare_part, SparePart.new(
      :name => "MyString",
      :provider => "MyString",
      :cost => 1.5,
      :extra_cost => 1.5,
      :quantity => ""
    ))
  end

  it "renders new spare_part form" do
    render

    assert_select "form[action=?][method=?]", spare_parts_path, "post" do

      assert_select "input#spare_part_name[name=?]", "spare_part[name]"

      assert_select "input#spare_part_provider[name=?]", "spare_part[provider]"

      assert_select "input#spare_part_cost[name=?]", "spare_part[cost]"

      assert_select "input#spare_part_extra_cost[name=?]", "spare_part[extra_cost]"

      assert_select "input#spare_part_quantity[name=?]", "spare_part[quantity]"
    end
  end
end
