require 'rails_helper'

RSpec.describe AppStoresController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(:get => '/app_stores').to route_to('app_stores#index')
    end

    it 'routes to #new' do
      expect(:get => '/app_stores/new').to route_to('app_stores#new')
    end

    it 'routes to #show' do
      expect(:get => '/app_stores/1').to route_to('app_stores#show', :id => '1')
    end

    it 'routes to #edit' do
      expect(:get => '/app_stores/1/edit').to route_to('app_stores#edit', :id => '1')
    end

    it 'routes to #create' do
      expect(:post => '/app_stores').to route_to('app_stores#create')
    end

    it 'routes to #update via PUT' do
      expect(:put => '/app_stores/1').to route_to('app_stores#update', :id => '1')
    end

    it 'routes to #update via PATCH' do
      expect(:patch => '/app_stores/1').to route_to('app_stores#update', :id => '1')
    end

    it 'routes to #destroy' do
      expect(:delete => '/app_stores/1').to route_to('app_stores#destroy', :id => '1')
    end

  end
end