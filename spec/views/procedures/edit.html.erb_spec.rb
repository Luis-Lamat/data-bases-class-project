require 'rails_helper'

RSpec.describe "procedures/edit", :type => :view do
  before(:each) do
    @procedure = assign(:procedure, Procedure.create!(
      :description => "MyText",
      :consumible_lab => 1.5,
      :consumible_general => 1.5
    ))
  end

  it "renders the edit procedure form" do
    render

    assert_select "form[action=?][method=?]", procedure_path(@procedure), "post" do

      assert_select "textarea#procedure_description[name=?]", "procedure[description]"

      assert_select "input#procedure_consumible_lab[name=?]", "procedure[consumible_lab]"

      assert_select "input#procedure_consumible_general[name=?]", "procedure[consumible_general]"
    end
  end
end
