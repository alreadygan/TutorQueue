require "spec_helper"

describe TutorsController do
  describe "routing" do

    it "routes to #index" do
      get("/tutors").should route_to("tutors#index")
    end

    it "routes to #new" do
      get("/tutors/new").should route_to("tutors#new")
    end

    it "routes to #show" do
      get("/tutors/1").should route_to("tutors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tutors/1/edit").should route_to("tutors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tutors").should route_to("tutors#create")
    end

    it "routes to #update" do
      put("/tutors/1").should route_to("tutors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tutors/1").should route_to("tutors#destroy", :id => "1")
    end

  end
end
