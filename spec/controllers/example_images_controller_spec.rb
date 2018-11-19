require 'rails_helper'

RSpec.describe ExampleImagesController, type: :controller do
  describe 'GET #index' do
    it 'assigns all example_images as @example_images' do
      example_image = FactoryBot.create(:example_image)
      get :index
      expect(assigns(:example_images)).to eq([example_image])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested example_image as @example_image' do
      example_image = FactoryBot.create(:example_image)
      get :show, params: {:id => example_image.to_param}
      expect(assigns(:example_image)).to eq(example_image)
    end
  end


  describe 'PUT #update' do
    context 'with valid params' do
      it 'updates the requested example_image' do
        example_image = FactoryBot.create(:example_image)
        put :update, params: {:id => example_image.to_param, :example_image => FactoryBot.attributes_for(:example_image)}
        example_image.reload
      end

      it 'assigns the requested example_image as @example_image' do
        example_image = FactoryBot.create(:example_image)
        put :update, params: {:id => example_image.to_param, :example_image => FactoryBot.attributes_for(:example_image)}
        expect(assigns(:example_image)).to eq(example_image)
      end

      it 'redirects to the example_image' do
        example_image = FactoryBot.create(:example_image)
        put :update, params: {:id => example_image.to_param, :example_image => FactoryBot.attributes_for(:example_image)}
        expect(response).to redirect_to(example_image)
      end
    end

  end

  describe 'DELETE #destroy' do
    it 'destroys the requested example_image' do
      example_image = FactoryBot.create(:example_image)
      expect {
        delete :destroy, params: {:id => example_image.to_param}
      }.to change(ExampleImage, :count).by(-1)
    end

    it 'redirects to the example_images list' do
      example_image = FactoryBot.create(:example_image)
      aid = example_image.to_param
      delete :destroy, params: {:id => aid}
      expect(response).to redirect_to(example_images_path)
    end
  end

end
