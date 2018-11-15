require 'rails_helper'

RSpec.describe DistributorsController, type: :controller do
  describe 'GET #index' do
    it 'assigns all distributors as @distributors' do
      distributor = FactoryBot.create(:distributor)
      get :index
      expect(assigns(:distributors)).to eq([distributor])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested distributor as @distributor' do
      distributor = FactoryBot.create(:distributor)
      get :show, params: {:id => distributor.to_param}
      expect(assigns(:distributor)).to eq(distributor)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Distributor' do
        expect {
          post :create, params: {:distributor => FactoryBot.attributes_for(:distributor)}
        }.to change(Distributor, :count).by(1)
      end

      it 'assigns a newly created distributor as @distributor' do
        post :create, params: {:distributor => FactoryBot.attributes_for(:distributor)}
        expect(assigns(:distributor)).to be_a(Distributor)
        expect(assigns(:distributor)).to be_persisted
      end

      it 'redirects to the created distributor' do
        post :create, params: {:distributor => FactoryBot.attributes_for(:distributor)}
        expect(response).to redirect_to(Distributor.last)
      end
    end

  end

  describe 'PUT #update' do
    context 'with valid params' do
      it 'updates the requested distributor' do
        distributor = FactoryBot.create(:distributor)
        put :update, params: {:id => distributor.to_param, :distributor => FactoryBot.attributes_for(:distributor)}
        distributor.reload
      end

      it 'assigns the requested distributor as @distributor' do
        distributor = FactoryBot.create(:distributor)
        put :update, params: {:id => distributor.to_param, :distributor => FactoryBot.attributes_for(:distributor)}
        expect(assigns(:distributor)).to eq(distributor)
      end

      it 'redirects to the distributor' do
        distributor = FactoryBot.create(:distributor)
        put :update, params: {:id => distributor.to_param, :distributor => FactoryBot.attributes_for(:distributor)}
        expect(response).to redirect_to(distributor)
      end
    end

  end

  describe 'DELETE #destroy' do
    it 'destroys the requested distributor' do
      distributor = FactoryBot.create(:distributor)
      expect {
        delete :destroy, params: {:id => distributor.to_param}
      }.to change(Distributor, :count).by(-1)
    end

    it 'redirects to the distributors list' do
      distributor = FactoryBot.create(:distributor)
      aid = distributor.to_param
      delete :destroy, params: {:id => aid}
      expect(response).to redirect_to(distributors_path)
    end
  end

end
