require 'rails_helper'

RSpec.describe AppStoreLinksController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(:get => '/app_store_links').to route_to('app_store_links#index')
    end

    it 'routes to #new' do
      expect(:get => '/app_store_links/new').to route_to('app_store_links#new')
    end

    it 'routes to #show' do
      expect(:get => '/app_store_links/1').to route_to('app_store_links#show', :id => '1')
    end

    it 'routes to #edit' do
      expect(:get => '/app_store_links/1/edit').to route_to('app_store_links#edit', :id => '1')
    end

    it 'routes to #create' do
      expect(:post => '/app_store_links').to route_to('app_store_links#create')
    end

    it 'routes to #update via PUT' do
      expect(:put => '/app_store_links/1').to route_to('app_store_links#update', :id => '1')
    end

    it 'routes to #update via PATCH' do
      expect(:patch => '/app_store_links/1').to route_to('app_store_links#update', :id => '1')
    end

    it 'routes to #destroy' do
      expect(:delete => '/app_store_links/1').to route_to('app_store_links#destroy', :id => '1')
    end

  end
end