require 'rails_helper'

RSpec.describe AppsController, type: :routing do

  describe 'routing' do

    it 'routes to #index' do
      expect(:get => '/apps').to route_to('apps#index')
    end

    it 'routes to #new' do
      expect(:get => '/apps/new').to route_to('apps#new')
    end

    it 'routes to #show' do
      expect(:get => '/apps/test-slug').to route_to('apps#show', :slug => test_to_slug('test slug'))
    end

    it 'routes to #edit' do
      expect(:get => '/apps/test-slug/edit').to route_to('apps#edit', :slug => test_to_slug('test slug'))
    end

    it 'routes to #create' do
      expect(:post => '/apps').to route_to('apps#create')
    end

    it 'routes to #update via PUT' do
      expect(:put => '/apps/test-slug').to route_to('apps#update', :slug => test_to_slug('test slug'))
    end

    it 'routes to #update via PATCH' do
      expect(:patch => '/apps/test-slug').to route_to('apps#update', :slug => test_to_slug('test slug'))
    end

    it 'routes to #destroy' do
      expect(:delete => '/apps/test-slug').to route_to('apps#destroy', :slug => test_to_slug('test slug'))
    end

  end
end