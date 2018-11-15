require 'rails_helper'

RSpec.describe WorksWithsController, type: :controller do
  describe 'GET #index' do
    it 'assigns all works_withs as @works_withs' do
      works_with = FactoryBot.create(:works_with)
      get :index
      expect(assigns(:works_withs)).to eq([works_with])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested works_with as @works_with' do
      works_with = FactoryBot.create(:works_with)
      get :show, params: {:id => works_with.to_param}
      expect(assigns(:works_with)).to eq(works_with)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new WorksWith' do
        expect {
          post :create, params: {:works_with => FactoryBot.attributes_for(:works_with)}
        }.to change(WorksWith, :count).by(1)
      end

      it 'assigns a newly created works_with as @works_with' do
        post :create, params: {:works_with => FactoryBot.attributes_for(:works_with)}
        expect(assigns(:works_with)).to be_a(WorksWith)
        expect(assigns(:works_with)).to be_persisted
      end

      it 'redirects to the created works_with' do
        post :create, params: {:works_with => FactoryBot.attributes_for(:works_with)}
        expect(response).to redirect_to(WorksWith.last)
      end
    end

  end

  describe 'PUT #update' do
    context 'with valid params' do
      it 'updates the requested works_with' do
        works_with = FactoryBot.create(:works_with)
        put :update, params: {:id => works_with.to_param, :works_with => FactoryBot.attributes_for(:works_with)}
        works_with.reload
      end

      it 'assigns the requested works_with as @works_with' do
        works_with = FactoryBot.create(:works_with)
        put :update, params: {:id => works_with.to_param, :works_with => FactoryBot.attributes_for(:works_with)}
        expect(assigns(:works_with)).to eq(works_with)
      end

      it 'redirects to the works_with' do
        works_with = FactoryBot.create(:works_with)
        put :update, params: {:id => works_with.to_param, :works_with => FactoryBot.attributes_for(:works_with)}
        expect(response).to redirect_to(works_with)
      end
    end

  end

  describe 'DELETE #destroy' do
    it 'destroys the requested works_with' do
      works_with = FactoryBot.create(:works_with)
      expect {
        delete :destroy, params: {:id => works_with.to_param}
      }.to change(WorksWith, :count).by(-1)
    end

    it 'redirects to the works_withs list' do
      works_with = FactoryBot.create(:works_with)
      aid = works_with.to_param
      delete :destroy, params: {:id => aid}
      expect(response).to redirect_to(works_withs_path)
    end
  end

end
