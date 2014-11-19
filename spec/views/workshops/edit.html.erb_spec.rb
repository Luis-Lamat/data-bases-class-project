require 'rails_helper'

RSpec.describe "workshops/edit", :type => :view do
  before(:each) do
    @workshop = assign(:workshop, Workshop.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit workshop form" do
    render

    assert_select "form[action=?][method=?]", workshop_path(@workshop), "post" do

      assert_select "input#workshop_name[name=?]", "workshop[name]"

      assert_select "textarea#workshop_description[name=?]", "workshop[description]"
    end
  end
end
