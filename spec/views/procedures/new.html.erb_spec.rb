require 'rails_helper'

RSpec.describe "procedures/new", :type => :view do
  before(:each) do
    assign(:procedure, Procedure.new(
      :description => "MyText",
      :consumible_lab => 1.5,
      :consumible_general => 1.5
    ))
  end

  it "renders new procedure form" do
    render

    assert_select "form[action=?][method=?]", procedures_path, "post" do

      assert_select "textarea#procedure_description[name=?]", "procedure[description]"

      assert_select "input#procedure_consumible_lab[name=?]", "procedure[consumible_lab]"

      assert_select "input#procedure_consumible_general[name=?]", "procedure[consumible_general]"
    end
  end
end
