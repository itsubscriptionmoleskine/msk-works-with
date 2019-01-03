class AppStoreLink < ApplicationRecord
  belongs_to :app
  belongs_to :app_store
  accepts_nested_attributes_for :app_store
  accepts_nested_attributes_for :app
  def as_json(options={})
    super(:only => [:app_id, :app_store_id, :is_live, :link])
  end
end
