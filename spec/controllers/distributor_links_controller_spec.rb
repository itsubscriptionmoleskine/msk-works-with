require 'rails_helper'

RSpec.describe DistributorLinksController, type: :controller do
  describe 'GET #index' do
    # it 'assigns all distributor_links as @distributor_links' do
    #   distributor_link = FactoryBot.create(:distributor_link)
    #   get :index
    #   expect(assigns(:distributor_links)).to eq([distributor_link])
    # end
    #
    # ToDo: Sequence Issue
  end

  describe 'GET #show' do
    it 'assigns the requested distributor_link as @distributor_link' do
      distributor_link = FactoryBot.create(:distributor_link)
      get :show, params: {:id => distributor_link.to_param}
      expect(assigns(:distributor_link)).to eq(distributor_link)
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      it 'updates the requested distributor_link' do
        distributor_link = FactoryBot.create(:distributor_link)
        put :update, params: {:id => distributor_link.to_param, :distributor_link => FactoryBot.attributes_for(:distributor_link)}
        distributor_link.reload
      end

      it 'assigns the requested distributor_link as @distributor_link' do
        distributor_link = FactoryBot.create(:distributor_link)
        put :update, params: {:id => distributor_link.to_param, :distributor_link => FactoryBot.attributes_for(:distributor_link)}
        expect(assigns(:distributor_link)).to eq(distributor_link)
      end

      it 'redirects to the distributor_link' do
        distributor_link = FactoryBot.create(:distributor_link)
        put :update, params: {:id => distributor_link.to_param, :distributor_link => FactoryBot.attributes_for(:distributor_link)}
        expect(response).to redirect_to(distributor_link)
      end
    end

  end

  describe 'DELETE #destroy' do
    it 'destroys the requested distributor_link' do
      distributor_link = FactoryBot.create(:distributor_link)
      expect {
        delete :destroy, params: {:id => distributor_link.to_param}
      }.to change(DistributorLink, :count).by(-1)
    end

    it 'redirects to the distributor_links list' do
      distributor_link = FactoryBot.create(:distributor_link)
      aid = distributor_link.to_param
      delete :destroy, params: {:id => aid}
      expect(response).to redirect_to(distributor_links_path)
    end
  end

end
