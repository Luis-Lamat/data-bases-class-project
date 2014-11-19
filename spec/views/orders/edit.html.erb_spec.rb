require 'rails_helper'

RSpec.describe "orders/edit", :type => :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :expenses => 1.5,
      :tax => 1.5,
      :total_cost => 1.5
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_expenses[name=?]", "order[expenses]"

      assert_select "input#order_tax[name=?]", "order[tax]"

      assert_select "input#order_total_cost[name=?]", "order[total_cost]"
    end
  end
end
