require 'rails_helper'

RSpec.describe AppStoresController, type: :controller do
  describe 'GET #index' do
    it 'assigns all app_stores as @app_stores' do
      app_store = FactoryBot.create(:app_store)
      get :index
      expect(assigns(:app_stores)).to eq([app_store])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested app_store as @app_store' do
      app_store = FactoryBot.create(:app_store)
      get :show, params: {:id => app_store.to_param}
      expect(assigns(:app_store)).to eq(app_store)
    end
  end


  describe 'PUT #update' do
    context 'with valid params' do
      it 'updates the requested app_store' do
        app_store = FactoryBot.create(:app_store)
        put :update, params: {:id => app_store.to_param, :app_store => FactoryBot.attributes_for(:app_store)}
        app_store.reload
      end

      it 'assigns the requested app_store as @app_store' do
        app_store = FactoryBot.create(:app_store)
        put :update, params: {:id => app_store.to_param, :app_store => FactoryBot.attributes_for(:app_store)}
        expect(assigns(:app_store)).to eq(app_store)
      end

      it 'redirects to the app_store' do
        app_store = FactoryBot.create(:app_store)
        put :update, params: {:id => app_store.to_param, :app_store => FactoryBot.attributes_for(:app_store)}
        expect(response).to redirect_to(app_store)
      end
    end

  end

  describe 'DELETE #destroy' do
    it 'destroys the requested app_store' do
      app_store = FactoryBot.create(:app_store)
      expect {
        delete :destroy, params: {:id => app_store.to_param}
      }.to change(AppStore, :count).by(-1)
    end

    it 'redirects to the app_stores list' do
      app_store = FactoryBot.create(:app_store)
      aid = app_store.to_param
      delete :destroy, params: {:id => aid}
      expect(response).to redirect_to(app_stores_path)
    end
  end

end
