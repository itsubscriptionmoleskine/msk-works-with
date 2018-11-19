require 'rails_helper'

RSpec.describe DevelopersController, type: :controller do
  describe 'GET #index' do
    it 'assigns all developers as @developers' do
      developer = FactoryBot.create(:developer)
      get :index
      expect(assigns(:developers)).to eq([developer])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested developer as @developer' do
      developer = FactoryBot.create(:developer)
      get :show, params: {:id => developer.to_param}
      expect(assigns(:developer)).to eq(developer)
    end
  end


  describe 'PUT #update' do
    context 'with valid params' do
      it 'updates the requested developer' do
        developer = FactoryBot.create(:developer)
        put :update, params: {:id => developer.to_param, :developer => FactoryBot.attributes_for(:developer)}
        developer.reload
      end

      it 'assigns the requested developer as @developer' do
        developer = FactoryBot.create(:developer)
        put :update, params: {:id => developer.to_param, :developer => FactoryBot.attributes_for(:developer)}
        expect(assigns(:developer)).to eq(developer)
      end

      it 'redirects to the developer' do
        developer = FactoryBot.create(:developer)
        put :update, params: {:id => developer.to_param, :developer => FactoryBot.attributes_for(:developer)}
        expect(response).to redirect_to(developer)
      end
    end

  end

  describe 'DELETE #destroy' do
    it 'destroys the requested developer' do
      developer = FactoryBot.create(:developer)
      expect {
        delete :destroy, params: {:id => developer.to_param}
      }.to change(Developer, :count).by(-1)
    end

    it 'redirects to the developers list' do
      developer = FactoryBot.create(:developer)
      aid = developer.to_param
      delete :destroy, params: {:id => aid}
      expect(response).to redirect_to(developers_path)
    end
  end

end
