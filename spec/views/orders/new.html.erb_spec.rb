require 'rails_helper'

RSpec.describe "orders/new", :type => :view do
  before(:each) do
    assign(:order, Order.new(
      :expenses => 1.5,
      :tax => 1.5,
      :total_cost => 1.5
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input#order_expenses[name=?]", "order[expenses]"

      assert_select "input#order_tax[name=?]", "order[tax]"

      assert_select "input#order_total_cost[name=?]", "order[total_cost]"
    end
  end
end
