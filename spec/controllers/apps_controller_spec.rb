require 'rails_helper'

RSpec.describe AppsController, type: :controller do
  describe 'GET #index' do
    it 'assigns all apps as @apps' do
      app = FactoryBot.create(:app)
      get :index
      expect(assigns(:apps)).to eq([app])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested app as @app' do
      app = FactoryBot.create(:app)
      get :show, params: {:id => app.to_param}
      expect(assigns(:app)).to eq(app)
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      it 'updates the requested app' do
        app = FactoryBot.create(:app)
        put :update, params: {:id => app.to_param, :app => FactoryBot.attributes_for(:app)}
        app.reload
      end

      it 'assigns the requested app as @app' do
        app = FactoryBot.create(:app)
        put :update, params: {:id => app.to_param, :app => FactoryBot.attributes_for(:app)}
        expect(assigns(:app)).to eq(app)
      end

      it 'redirects to the app' do
        app = FactoryBot.create(:app)
        put :update, params: {:id => app.to_param, :app => FactoryBot.attributes_for(:app)}
        expect(response).to redirect_to(app)
      end
    end

  end

  describe 'DELETE #destroy' do
    it 'destroys the requested app' do
      app = FactoryBot.create(:app)
      expect {
        delete :destroy, params: {:id => app.to_param}
      }.to change(App, :count).by(-1)
    end

    it 'redirects to the apps list' do
      app = FactoryBot.create(:app)
      aid = app.to_param
      delete :destroy, params: {:id => aid}
      expect(response).to redirect_to(apps_path)
    end
  end

end
