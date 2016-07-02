require "rails_helper"

RSpec.describe DesignsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/designs").to route_to("designs#index")
    end

    it "routes to #new" do
      expect(:get => "/designs/new").to route_to("designs#new")
    end

    it "routes to #show" do
      expect(:get => "/designs/1").to route_to("designs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/designs/1/edit").to route_to("designs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/designs").to route_to("designs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/designs/1").to route_to("designs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/designs/1").to route_to("designs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/designs/1").to route_to("designs#destroy", :id => "1")
    end

  end
end
