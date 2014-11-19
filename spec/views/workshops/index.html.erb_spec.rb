require 'rails_helper'

RSpec.describe "workshops/index", :type => :view do
  before(:each) do
    assign(:workshops, [
      Workshop.create!(
        :name => "Name",
        :description => "MyText"
      ),
      Workshop.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of workshops" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
