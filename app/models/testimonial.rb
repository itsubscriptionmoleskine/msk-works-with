class Testimonial < ApplicationRecord
  belongs_to :works_with
  has_many :testimonial_slides
  accepts_nested_attributes_for :works_with
  mount_uploader :promo_image_url, ImageUploader
end
