require 'rails_helper'

RSpec.describe 'Style Guide', type: :request do
  describe 'GET /style-guide' do
    it 'redirects to the generated document' do
      get '/style-guide'
      expect(response).to redirect_to('/assets/styleguide.html')
    end
  end
end
