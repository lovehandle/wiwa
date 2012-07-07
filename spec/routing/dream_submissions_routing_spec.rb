require "spec_helper"

describe DreamSubmissionsController do
  describe "routing" do

    it "routes to #index" do
      get("/dream_submissions").should route_to("dream_submissions#index")
    end

    it "routes to #new" do
      get("/dream_submissions/new").should route_to("dream_submissions#new")
    end

    it "routes to #show" do
      get("/dream_submissions/1").should route_to("dream_submissions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dream_submissions/1/edit").should route_to("dream_submissions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dream_submissions").should route_to("dream_submissions#create")
    end

    it "routes to #update" do
      put("/dream_submissions/1").should route_to("dream_submissions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dream_submissions/1").should route_to("dream_submissions#destroy", :id => "1")
    end

  end
end
