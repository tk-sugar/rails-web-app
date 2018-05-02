require 'rails_helper'

RSpec.describe "Fuga::Hoges", type: :request do
  describe "GET /fuga_hoges" do
    it "works! (now write some real specs)" do
      get fuga_hoges_path
      expect(response).to have_http_status(200)
    end
  end
end
