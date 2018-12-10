class Developer < ApplicationRecord
  has_many :apps
  mount_uploader :logo_image_url, ImageUploader
  def as_json(options={})
    super(:only => [:name, :description, :url, :is_live, :logo_image_url])
  end
end
