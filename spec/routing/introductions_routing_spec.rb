require "rails_helper"

RSpec.describe IntroductionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/intro").to route_to("introductions#index")
    end
  end
end
