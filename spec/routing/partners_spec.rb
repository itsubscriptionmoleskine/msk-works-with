require 'rails_helper'

RSpec.describe PartnersController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(:get => '/partners').to route_to('partners#index')
    end

    it 'routes to #new' do
      expect(:get => '/partners/new').to route_to('partners#new')
    end

    it 'routes to #show' do
      expect(:get => '/partners/test-slug').to route_to('partners#show', :slug => test_to_slug('test slug'))
    end

    it 'routes to #edit' do
      expect(:get => '/partners/test-slug/edit').to route_to('partners#edit', :slug => test_to_slug('test slug'))
    end

    it 'routes to #create' do
      expect(:post => '/partners').to route_to('partners#create')
    end

    it 'routes to #update via PUT' do
      expect(:put => '/partners/test-slug').to route_to('partners#update', :slug => test_to_slug('test slug'))
    end

    it 'routes to #update via PATCH' do
      expect(:patch => '/partners/test-slug').to route_to('partners#update', :slug => test_to_slug('test slug'))
    end

    it 'routes to #destroy' do
      expect(:delete => '/partners/test-slug').to route_to('partners#destroy', :slug => test_to_slug('test slug'))
    end

  end
end