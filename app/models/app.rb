class App < ApplicationRecord
  belongs_to :developer
  accepts_nested_attributes_for :developer
  has_many :app_store_links
  def as_json(options={})
    super(:only => [:name, :description, :info_url, :is_live, :developer_id])
  end
  validates_length_of :description, maximum: 220
end