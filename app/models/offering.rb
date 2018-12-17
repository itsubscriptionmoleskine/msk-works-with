class Offering < ApplicationRecord
  has_many :works_withs
  mount_uploader :product_image, ImageUploader
  def as_json(options={})
    super(:only => [:name, :description, :shop_link, :is_live])
  end
  validates_length_of :description, maximum: 220
  validates :product_image, image_size: { width: { min: 640 }, height: { min:640 } }
end
