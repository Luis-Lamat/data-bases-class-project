require 'rails_helper'

RSpec.describe "procedures/index", :type => :view do
  before(:each) do
    assign(:procedures, [
      Procedure.create!(
        :description => "MyText",
        :consumible_lab => 1.5,
        :consumible_general => 1.5
      ),
      Procedure.create!(
        :description => "MyText",
        :consumible_lab => 1.5,
        :consumible_general => 1.5
      )
    ])
  end

  it "renders a list of procedures" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
