require 'rails_helper'

RSpec.describe 'Cookie Policy', type: :routing do
  describe 'GET /cookies' do
    it 'routes to the cookie policy' do
      expect(:get => '/cookies').to route_to('cookie_policy#index')
    end
  end

  describe 'GET /cookie-policy' do
    it 'routes to the cookie policy' do
      expect(:get => '/cookie-policy').to route_to('cookie_policy#index')
    end
  end

end
