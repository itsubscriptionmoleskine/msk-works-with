require 'rails_helper'

RSpec.describe DevelopersController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(:get => '/developers').to route_to('developers#index')
    end

    it 'routes to #new' do
      expect(:get => '/developers/new').to route_to('developers#new')
    end

    it 'routes to #show' do
      expect(:get => '/developers/test-slug').to route_to('developers#show', :slug => test_to_slug('test slug'))
    end

    it 'routes to #edit' do
      expect(:get => '/developers/test-slug/edit').to route_to('developers#edit', :slug => test_to_slug('test slug'))
    end

    it 'routes to #create' do
      expect(:post => '/developers').to route_to('developers#create')
    end

    it 'routes to #update via PUT' do
      expect(:put => '/developers/test-slug').to route_to('developers#update', :slug => test_to_slug('test slug'))
    end

    it 'routes to #update via PATCH' do
      expect(:patch => '/developers/test-slug').to route_to('developers#update', :slug => test_to_slug('test slug'))
    end

    it 'routes to #destroy' do
      expect(:delete => '/developers/test-slug').to route_to('developers#destroy', :slug => test_to_slug('test slug'))
    end

  end
end