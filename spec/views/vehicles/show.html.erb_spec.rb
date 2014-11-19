require 'rails_helper'

RSpec.describe "vehicles/show", :type => :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      :series_num => "Series Num",
      :model => "Model",
      :brand => "Brand",
      :color => "Color",
      :placas => "Placas"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Series Num/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Placas/)
  end
end
