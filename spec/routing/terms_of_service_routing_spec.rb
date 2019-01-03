require 'rails_helper'

RSpec.describe TermsOfServiceController, type: :routing do
  describe "routing" do
    it "routes to terms of service" do
      expect(:get => "/tos").to route_to("terms_of_service#index")
    end
  end
end
