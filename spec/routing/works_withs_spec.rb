require 'rails_helper'

RSpec.describe WorksWithsController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(:get => '/works_withs').to route_to('works_withs#index')
    end

    it 'routes to #new' do
      expect(:get => '/works_withs/new').to route_to('works_withs#new')
    end

    it 'routes to #show' do
      expect(:get => '/works_withs/1').to route_to('works_withs#show', :id => '1')
    end

    it 'routes to #edit' do
      expect(:get => '/works_withs/1/edit').to route_to('works_withs#edit', :id => '1')
    end

    it 'routes to #create' do
      expect(:post => '/works_withs').to route_to('works_withs#create')
    end

    it 'routes to #update via PUT' do
      expect(:put => '/works_withs/1').to route_to('works_withs#update', :id => '1')
    end

    it 'routes to #update via PATCH' do
      expect(:patch => '/works_withs/1').to route_to('works_withs#update', :id => '1')
    end

    it 'routes to #destroy' do
      expect(:delete => '/works_withs/1').to route_to('works_withs#destroy', :id => '1')
    end

  end
end