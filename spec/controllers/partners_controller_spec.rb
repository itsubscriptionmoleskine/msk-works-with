require 'rails_helper'

RSpec.describe PartnersController, type: :controller do
  describe 'GET #index' do
    it 'assigns all partners as @partners' do
      partner = FactoryBot.create(:partner)
      get :index
      expect(assigns(:partners)).to eq([partner])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested partner as @partner' do
      partner = FactoryBot.create(:partner)
      get :show, params: {:slug => partner.to_param}
      expect(assigns(:partner)).to eq(partner)
    end
  end


  describe 'PUT #update' do
    context 'with valid params' do
      it 'updates the requested partner' do
        partner = FactoryBot.create(:partner)
        put :update, params: {:slug => partner.to_param, :partner => FactoryBot.attributes_for(:partner)}
        partner.reload
      end

      it 'assigns the requested partner as @partner' do
        partner = FactoryBot.create(:partner)
        put :update, params: {:slug => partner.to_param, :partner => FactoryBot.attributes_for(:partner)}
        expect(assigns(:partner)).to eq(partner)
      end

      it 'redirects to the partner' do
        partner = FactoryBot.create(:partner)
        put :update, params: {:slug => partner.to_param, :partner => FactoryBot.attributes_for(:partner)}
        expect(response).to redirect_to(partner)
      end
    end

  end

  describe 'DELETE #destroy' do
    it 'destroys the requested partner' do
      partner = FactoryBot.create(:partner)
      expect {
        delete :destroy, params: {:slug => partner.to_param}
      }.to change(Partner, :count).by(-1)
    end

    it 'redirects to the partners list' do
      partner = FactoryBot.create(:partner)
      partner_param = partner.to_param
      delete :destroy, params: {:slug => partner_param}
      expect(response).to redirect_to(partners_path)
    end
  end

end
