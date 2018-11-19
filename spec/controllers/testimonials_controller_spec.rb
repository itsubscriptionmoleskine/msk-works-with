require 'rails_helper'

RSpec.describe TestimonialsController, type: :controller do
  describe 'GET #index' do
    it 'assigns all testimonials as @testimonials' do
      testimonial = FactoryBot.create(:testimonial)
      get :index
      expect(assigns(:testimonials)).to eq([testimonial])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested testimonial as @testimonial' do
      testimonial = FactoryBot.create(:testimonial)
      get :show, params: {:id => testimonial.to_param}
      expect(assigns(:testimonial)).to eq(testimonial)
    end
  end


  describe 'PUT #update' do
    context 'with valid params' do
      it 'updates the requested testimonial' do
        testimonial = FactoryBot.create(:testimonial)
        put :update, params: {:id => testimonial.to_param, :testimonial => FactoryBot.attributes_for(:testimonial)}
        testimonial.reload
      end

      it 'assigns the requested testimonial as @testimonial' do
        testimonial = FactoryBot.create(:testimonial)
        put :update, params: {:id => testimonial.to_param, :testimonial => FactoryBot.attributes_for(:testimonial)}
        expect(assigns(:testimonial)).to eq(testimonial)
      end

      it 'redirects to the testimonial' do
        testimonial = FactoryBot.create(:testimonial)
        put :update, params: {:id => testimonial.to_param, :testimonial => FactoryBot.attributes_for(:testimonial)}
        expect(response).to redirect_to(testimonial)
      end
    end

  end

  describe 'DELETE #destroy' do
    it 'destroys the requested testimonial' do
      testimonial = FactoryBot.create(:testimonial)
      expect {
        delete :destroy, params: {:id => testimonial.to_param}
      }.to change(Testimonial, :count).by(-1)
    end

    it 'redirects to the testimonials list' do
      testimonial = FactoryBot.create(:testimonial)
      aid = testimonial.to_param
      delete :destroy, params: {:id => aid}
      expect(response).to redirect_to(testimonials_path)
    end
  end

end
