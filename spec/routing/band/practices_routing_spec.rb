require "rails_helper"

RSpec.describe Band::PracticesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/band/practices").to route_to("band/practices#index")
    end

    it "routes to #new" do
      expect(:get => "/band/practices/new").to route_to("band/practices#new")
    end

    it "routes to #show" do
      expect(:get => "/band/practices/1").to route_to("band/practices#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/band/practices/1/edit").to route_to("band/practices#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/band/practices").to route_to("band/practices#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/band/practices/1").to route_to("band/practices#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/band/practices/1").to route_to("band/practices#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/band/practices/1").to route_to("band/practices#destroy", :id => "1")
    end

  end
end
