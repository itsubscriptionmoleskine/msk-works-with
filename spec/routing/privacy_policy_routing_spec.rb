require 'rails_helper'

RSpec.describe PrivacyPolicyController, type: :routing do
  describe "routing" do
    it "routes to privacy policy" do
      expect(:get => "/privacy").to route_to("privacy_policy#index")
    end
  end
end
