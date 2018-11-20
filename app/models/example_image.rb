class ExampleImage < ApplicationRecord
  belongs_to :works_with
  accepts_nested_attributes_for :works_with
  mount_uploader :image_url, ImageUploader
end
