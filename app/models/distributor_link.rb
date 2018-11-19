class DistributorLink < ApplicationRecord
  belongs_to :app
  belongs_to :distributor
  accepts_nested_attributes_for :distributor
  accepts_nested_attributes_for :app
end
