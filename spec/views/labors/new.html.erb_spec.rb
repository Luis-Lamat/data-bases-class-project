require 'rails_helper'

RSpec.describe "labors/new", :type => :view do
  before(:each) do
    assign(:labor, Labor.new(
      :description => "MyText",
      :cost => 1.5,
      :external_comision => 1.5,
      :internal_comision => 1.5
    ))
  end

  it "renders new labor form" do
    render

    assert_select "form[action=?][method=?]", labors_path, "post" do

      assert_select "textarea#labor_description[name=?]", "labor[description]"

      assert_select "input#labor_cost[name=?]", "labor[cost]"

      assert_select "input#labor_external_comision[name=?]", "labor[external_comision]"

      assert_select "input#labor_internal_comision[name=?]", "labor[internal_comision]"
    end
  end
end
