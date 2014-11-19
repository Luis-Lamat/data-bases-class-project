require 'rails_helper'

RSpec.describe "labors/edit", :type => :view do
  before(:each) do
    @labor = assign(:labor, Labor.create!(
      :description => "MyText",
      :cost => 1.5,
      :external_comision => 1.5,
      :internal_comision => 1.5
    ))
  end

  it "renders the edit labor form" do
    render

    assert_select "form[action=?][method=?]", labor_path(@labor), "post" do

      assert_select "textarea#labor_description[name=?]", "labor[description]"

      assert_select "input#labor_cost[name=?]", "labor[cost]"

      assert_select "input#labor_external_comision[name=?]", "labor[external_comision]"

      assert_select "input#labor_internal_comision[name=?]", "labor[internal_comision]"
    end
  end
end
