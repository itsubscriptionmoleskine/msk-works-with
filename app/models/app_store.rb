class AppStore < ApplicationRecord
  has_many :app_store_links
  def as_json(options={})
    super(:only => [:name, :badge_image_url, :is_live, :icon_id])
  end
end