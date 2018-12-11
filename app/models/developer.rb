class Developer < ApplicationRecord
  has_many :apps
  mount_uploader :logo_image_url, ImageUploader
  def as_json(options={})
    super(:only => [:name, :description, :url, :is_live, :logo_image_url])
  end
  validates_length_of :description, maximum: 220
  validates :logo_image_url, image_size: { width: { min: 640 }, height: { min:640 } }
end
