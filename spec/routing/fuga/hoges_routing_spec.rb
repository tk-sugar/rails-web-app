require "rails_helper"

RSpec.describe Fuga::HogesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fuga/hoges").to route_to("fuga/hoges#index")
    end

    it "routes to #new" do
      expect(:get => "/fuga/hoges/new").to route_to("fuga/hoges#new")
    end

    it "routes to #show" do
      expect(:get => "/fuga/hoges/1").to route_to("fuga/hoges#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fuga/hoges/1/edit").to route_to("fuga/hoges#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fuga/hoges").to route_to("fuga/hoges#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fuga/hoges/1").to route_to("fuga/hoges#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fuga/hoges/1").to route_to("fuga/hoges#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fuga/hoges/1").to route_to("fuga/hoges#destroy", :id => "1")
    end

  end
end
