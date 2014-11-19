require 'rails_helper'

RSpec.describe "Labors", :type => :request do
  describe "GET /labors" do
    it "works! (now write some real specs)" do
      get labors_path
      expect(response).to have_http_status(200)
    end
  end
end
