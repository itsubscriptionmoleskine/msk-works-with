require 'rails_helper'

RSpec.describe AppStoreLinksController, type: :controller do
  describe 'GET #index' do
    # it 'assigns all app_store_links as @app_store_links' do
    #   app_store_link = FactoryBot.create(:app_store_link)
    #   get :index
    #   expect(assigns(:app_store_links)).to eq([app_store_link])
    # end
    #
    # ToDo: Sequence Issue
  end

  describe 'GET #show' do
    it 'assigns the requested app_store_link as @app_store_link' do
      app_store_link = FactoryBot.create(:app_store_link)
      get :show, params: {:id => app_store_link.to_param}
      expect(assigns(:app_store_link)).to eq(app_store_link)
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      it 'updates the requested app_store_link' do
        app_store_link = FactoryBot.create(:app_store_link)
        put :update, params: {:id => app_store_link.to_param, :app_store_link => FactoryBot.attributes_for(:app_store_link)}
        app_store_link.reload
      end

      it 'assigns the requested app_store_link as @app_store_link' do
        app_store_link = FactoryBot.create(:app_store_link)
        put :update, params: {:id => app_store_link.to_param, :app_store_link => FactoryBot.attributes_for(:app_store_link)}
        expect(assigns(:app_store_link)).to eq(app_store_link)
      end

      it 'redirects to the app_store_link' do
        app_store_link = FactoryBot.create(:app_store_link)
        put :update, params: {:id => app_store_link.to_param, :app_store_link => FactoryBot.attributes_for(:app_store_link)}
        expect(response).to redirect_to(app_store_link)
      end
    end

  end

  describe 'DELETE #destroy' do
    it 'destroys the requested app_store_link' do
      app_store_link = FactoryBot.create(:app_store_link)
      expect {
        delete :destroy, params: {:id => app_store_link.to_param}
      }.to change(AppStoreLink, :count).by(-1)
    end

    it 'redirects to the app_store_links list' do
      app_store_link = FactoryBot.create(:app_store_link)
      aid = app_store_link.to_param
      delete :destroy, params: {:id => aid}
      expect(response).to redirect_to(app_store_links_path)
    end
  end

end
