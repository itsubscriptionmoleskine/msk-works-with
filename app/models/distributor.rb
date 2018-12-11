class Distributor < ApplicationRecord
  has_many :distributor_links
  mount_uploader :badge_image_url, ImageUploader
  def as_json(options={})
    super(:only => [:name, :badge_image_url, :is_live, :icon_id])
  end
  validates :badge_image_url, image_size: { width: { min: 280 } }
end