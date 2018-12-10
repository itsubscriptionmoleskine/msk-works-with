class Distributor < ApplicationRecord
  #has_many :apps, through: :distributor_links
  # ToDo: fix relationship
  def as_json(options={})
    super(:only => [:link, :distributor_id, :app_id])
  end
end