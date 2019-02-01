# require 'rails_helper'
#
# RSpec.describe TestimonialSlidesController, type: :controller do
#   describe 'GET #index' do
#     it 'assigns all testimonial_slides as @testimonial_slides' do
#       testimonial_slide = FactoryBot.create(:testimonial_slide)
#       get :index
#       expect(assigns(:testimonial_slides)).to eq([testimonial_slide])
#     end
#   end
#
#   describe 'GET #show' do
#     it 'assigns the requested testimonial_slide as @testimonial_slide' do
#       testimonial_slide = FactoryBot.create(:testimonial_slide)
#       get :show, params: {:id => testimonial_slide.to_param}
#       expect(assigns(:testimonial_slide)).to eq(testimonial_slide)
#     end
#   end
#
#
#   describe 'PUT #update' do
#     context 'with valid params' do
#       it 'updates the requested testimonial_slide' do
#         testimonial_slide = FactoryBot.create(:testimonial_slide)
#         put :update, params: {:id => testimonial_slide.to_param, :testimonial_slide => FactoryBot.attributes_for(:testimonial_slide)}
#         testimonial_slide.reload
#       end
#
#       it 'assigns the requested testimonial_slide as @testimonial_slide' do
#         testimonial_slide = FactoryBot.create(:testimonial_slide)
#         put :update, params: {:id => testimonial_slide.to_param, :testimonial_slide => FactoryBot.attributes_for(:testimonial_slide)}
#         expect(assigns(:testimonial_slide)).to eq(testimonial_slide)
#       end
#
#       it 'redirects to the testimonial_slide' do
#         testimonial_slide = FactoryBot.create(:testimonial_slide)
#         put :update, params: {:id => testimonial_slide.to_param, :testimonial_slide => FactoryBot.attributes_for(:testimonial_slide)}
#         expect(response).to redirect_to(testimonial_slide)
#       end
#     end
#
#   end
#
#   describe 'DELETE #destroy' do
#     it 'destroys the requested testimonial_slide' do
#       testimonial_slide = FactoryBot.create(:testimonial_slide)
#       expect {
#         delete :destroy, params: {:id => testimonial_slide.to_param}
#       }.to change(TestimonialSlide, :count).by(-1)
#     end
#
#     it 'redirects to the testimonial_slides list' do
#       testimonial_slide = FactoryBot.create(:testimonial_slide)
#       aid = testimonial_slide.to_param
#       delete :destroy, params: {:id => aid}
#       expect(response).to redirect_to(testimonial_slides_path)
#     end
#   end
#
# end
