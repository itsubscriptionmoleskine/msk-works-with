require "rails_helper"

RSpec.describe TestimonialSlidesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/testimonial_slides").to route_to("testimonial_slides#index")
    end

    it "routes to #new" do
      expect(:get => "/testimonial_slides/new").to route_to("testimonial_slides#new")
    end

    it "routes to #show" do
      expect(:get => "/testimonial_slides/1").to route_to("testimonial_slides#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/testimonial_slides/1/edit").to route_to("testimonial_slides#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/testimonial_slides").to route_to("testimonial_slides#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/testimonial_slides/1").to route_to("testimonial_slides#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/testimonial_slides/1").to route_to("testimonial_slides#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/testimonial_slides/1").to route_to("testimonial_slides#destroy", :id => "1")
    end
  end
end
