require 'rails_helper'

RSpec.describe UseCasesController, type: :controller do
  describe 'GET #index' do
    it 'assigns all use_cases as @use_cases' do
      use_case = FactoryBot.create(:use_case)
      get :index
      expect(assigns(:use_cases)).to eq([use_case])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested use_case as @use_case' do
      use_case = FactoryBot.create(:use_case)
      get :show, params: {:id => use_case.to_param}
      expect(assigns(:use_case)).to eq(use_case)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new UseCase' do
        expect {
          post :create, params: {:use_case => FactoryBot.attributes_for(:use_case)}
        }.to change(UseCase, :count).by(1)
      end

      it 'assigns a newly created use_case as @use_case' do
        post :create, params: {:use_case => FactoryBot.attributes_for(:use_case)}
        expect(assigns(:use_case)).to be_a(UseCase)
        expect(assigns(:use_case)).to be_persisted
      end

      it 'redirects to the created use_case' do
        post :create, params: {:use_case => FactoryBot.attributes_for(:use_case)}
        expect(response).to redirect_to(UseCase.last)
      end
    end

  end

  describe 'PUT #update' do
    context 'with valid params' do
      it 'updates the requested use_case' do
        use_case = FactoryBot.create(:use_case)
        put :update, params: {:id => use_case.to_param, :use_case => FactoryBot.attributes_for(:use_case)}
        use_case.reload
      end

      it 'assigns the requested use_case as @use_case' do
        use_case = FactoryBot.create(:use_case)
        put :update, params: {:id => use_case.to_param, :use_case => FactoryBot.attributes_for(:use_case)}
        expect(assigns(:use_case)).to eq(use_case)
      end

      it 'redirects to the use_case' do
        use_case = FactoryBot.create(:use_case)
        put :update, params: {:id => use_case.to_param, :use_case => FactoryBot.attributes_for(:use_case)}
        expect(response).to redirect_to(use_case)
      end
    end

  end

  describe 'DELETE #destroy' do
    it 'destroys the requested use_case' do
      use_case = FactoryBot.create(:use_case)
      expect {
        delete :destroy, params: {:id => use_case.to_param}
      }.to change(UseCase, :count).by(-1)
    end

    it 'redirects to the use_cases list' do
      use_case = FactoryBot.create(:use_case)
      aid = use_case.to_param
      delete :destroy, params: {:id => aid}
      expect(response).to redirect_to(use_cases_path)
    end
  end

end
