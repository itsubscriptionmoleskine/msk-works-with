require 'rails_helper'

RSpec.describe OfferingsController, type: :controller do
  describe 'GET #index' do
    it 'assigns all offerings as @offerings' do
      offering = FactoryBot.create(:offering)
      get :index
      expect(assigns(:offerings)).to eq([offering])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested offering as @offering' do
      offering = FactoryBot.create(:offering)
      get :show, params: {:id => offering.to_param}
      expect(assigns(:offering)).to eq(offering)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Offering' do
        expect {
          post :create, params: {:offering => FactoryBot.attributes_for(:offering)}
        }.to change(Offering, :count).by(1)
      end

      it 'assigns a newly created offering as @offering' do
        post :create, params: {:offering => FactoryBot.attributes_for(:offering)}
        expect(assigns(:offering)).to be_a(Offering)
        expect(assigns(:offering)).to be_persisted
      end

      it 'redirects to the created offering' do
        post :create, params: {:offering => FactoryBot.attributes_for(:offering)}
        expect(response).to redirect_to(Offering.last)
      end
    end

  end

  describe 'PUT #update' do
    context 'with valid params' do
      it 'updates the requested offering' do
        offering = FactoryBot.create(:offering)
        put :update, params: {:id => offering.to_param, :offering => FactoryBot.attributes_for(:offering)}
        offering.reload
      end

      it 'assigns the requested offering as @offering' do
        offering = FactoryBot.create(:offering)
        put :update, params: {:id => offering.to_param, :offering => FactoryBot.attributes_for(:offering)}
        expect(assigns(:offering)).to eq(offering)
      end

      it 'redirects to the offering' do
        offering = FactoryBot.create(:offering)
        put :update, params: {:id => offering.to_param, :offering => FactoryBot.attributes_for(:offering)}
        expect(response).to redirect_to(offering)
      end
    end

  end

  describe 'DELETE #destroy' do
    it 'destroys the requested offering' do
      offering = FactoryBot.create(:offering)
      expect {
        delete :destroy, params: {:id => offering.to_param}
      }.to change(Offering, :count).by(-1)
    end

    it 'redirects to the offerings list' do
      offering = FactoryBot.create(:offering)
      aid = offering.to_param
      delete :destroy, params: {:id => aid}
      expect(response).to redirect_to(offerings_path)
    end
  end

end
