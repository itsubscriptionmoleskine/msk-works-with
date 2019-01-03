require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe 'GET #index' do
    it 'assigns all products as @products' do
      product = FactoryBot.create(:product)
      get :index
      expect(assigns(:products)).to eq([product])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested product as @product' do
      product = FactoryBot.create(:product)
      get :show, params: {:id => product.to_param}
      expect(assigns(:product)).to eq(product)
    end
  end


  describe 'PUT #update' do
    context 'with valid params' do
      it 'updates the requested product' do
        product = FactoryBot.create(:product)
        put :update, params: {:id => product.to_param, :product => FactoryBot.attributes_for(:product)}
        product.reload
      end

      it 'assigns the requested product as @product' do
        product = FactoryBot.create(:product)
        put :update, params: {:id => product.to_param, :product => FactoryBot.attributes_for(:product)}
        expect(assigns(:product)).to eq(product)
      end

      it 'redirects to the product' do
        product = FactoryBot.create(:product)
        put :update, params: {:id => product.to_param, :product => FactoryBot.attributes_for(:product)}
        expect(response).to redirect_to(product)
      end
    end

  end

  describe 'DELETE #destroy' do
    it 'destroys the requested product' do
      product = FactoryBot.create(:product)
      expect {
        delete :destroy, params: {:id => product.to_param}
      }.to change(Product, :count).by(-1)
    end

    it 'redirects to the products list' do
      product = FactoryBot.create(:product)
      aid = product.to_param
      delete :destroy, params: {:id => aid}
      expect(response).to redirect_to(products_path)
    end
  end

end
