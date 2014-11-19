require 'rails_helper'

RSpec.describe "workshops/new", :type => :view do
  before(:each) do
    assign(:workshop, Workshop.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new workshop form" do
    render

    assert_select "form[action=?][method=?]", workshops_path, "post" do

      assert_select "input#workshop_name[name=?]", "workshop[name]"

      assert_select "textarea#workshop_description[name=?]", "workshop[description]"
    end
  end
end
