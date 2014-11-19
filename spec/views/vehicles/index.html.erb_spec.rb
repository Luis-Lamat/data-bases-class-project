require 'rails_helper'

RSpec.describe "vehicles/index", :type => :view do
  before(:each) do
    assign(:vehicles, [
      Vehicle.create!(
        :series_num => "Series Num",
        :model => "Model",
        :brand => "Brand",
        :color => "Color",
        :placas => "Placas"
      ),
      Vehicle.create!(
        :series_num => "Series Num",
        :model => "Model",
        :brand => "Brand",
        :color => "Color",
        :placas => "Placas"
      )
    ])
  end

  it "renders a list of vehicles" do
    render
    assert_select "tr>td", :text => "Series Num".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Placas".to_s, :count => 2
  end
end
