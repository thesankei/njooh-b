require "spec_helper"

describe SellablesController do
  describe "routing" do

    it "routes to #index" do
      get("/sellables").should route_to("sellables#index")
    end

    it "routes to #new" do
      get("/sellables/new").should route_to("sellables#new")
    end

    it "routes to #show" do
      get("/sellables/1").should route_to("sellables#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sellables/1/edit").should route_to("sellables#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sellables").should route_to("sellables#create")
    end

    it "routes to #update" do
      put("/sellables/1").should route_to("sellables#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sellables/1").should route_to("sellables#destroy", :id => "1")
    end

  end
end
