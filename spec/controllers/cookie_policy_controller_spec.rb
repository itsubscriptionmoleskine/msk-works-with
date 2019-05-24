require 'rails_helper'

RSpec.describe CookieConsentController, type: :controller do

  describe 'GET #index' do
    it 'checks that the external link is assigned' do
      moleskine_cookie_url = 'http://www.moleskine.com/'
      get :index
      expect(assigns(:moleskine_cookie_url)).to eq([moleskine_cookie_url])
    end
  end

end