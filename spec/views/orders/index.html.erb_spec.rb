require 'rails_helper'

RSpec.describe "orders/index", :type => :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :expenses => 1.5,
        :tax => 1.5,
        :total_cost => 1.5
      ),
      Order.create!(
        :expenses => 1.5,
        :tax => 1.5,
        :total_cost => 1.5
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
