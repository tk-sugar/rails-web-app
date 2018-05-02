require 'rails_helper'

RSpec.describe "Band::Practices", type: :request do
  describe "GET /band_practices" do
    it "works! (now write some real specs)" do
      get band_practices_path
      expect(response).to have_http_status(200)
    end
  end
end
