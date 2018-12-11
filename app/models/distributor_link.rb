class DistributorLink < ApplicationRecord
  belongs_to :app
  belongs_to :distributor
  accepts_nested_attributes_for :distributor
  accepts_nested_attributes_for :app
  def as_json(options={})
    super(:only => [:app_id, :distributor_id, :is_live, :link])
  end
end
