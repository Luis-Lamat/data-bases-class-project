require 'rails_helper'

RSpec.describe "labors/index", :type => :view do
  before(:each) do
    assign(:labors, [
      Labor.create!(
        :description => "MyText",
        :cost => 1.5,
        :external_comision => 1.5,
        :internal_comision => 1.5
      ),
      Labor.create!(
        :description => "MyText",
        :cost => 1.5,
        :external_comision => 1.5,
        :internal_comision => 1.5
      )
    ])
  end

  it "renders a list of labors" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
