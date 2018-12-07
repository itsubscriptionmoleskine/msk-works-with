class WorksWith < ApplicationRecord
  has_many :use_cases
  has_many :testimonials
  has_many :example_images
  belongs_to :app
  belongs_to :offering
  accepts_nested_attributes_for :app
  accepts_nested_attributes_for :offering
  mount_uploader :promo_image_url, ImageUploader
end
