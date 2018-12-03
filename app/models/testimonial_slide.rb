class TestimonialSlide < ApplicationRecord
  belongs_to :testimonial
  accepts_nested_attributes_for :testimonial
  mount_uploader :image_url, ImageUploader
end
