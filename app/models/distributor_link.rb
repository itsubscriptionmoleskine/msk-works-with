class DistributorLink < ApplicationRecord
  belongs_to :app
  belongs_to :distributor
  accepts_nested_attributes_for :distributor
  accepts_nested_attributes_for :app
  def as_json(options={})
    super(:only => [:name, :badge_image_url, :is_live, :icon_id])
  end
end
