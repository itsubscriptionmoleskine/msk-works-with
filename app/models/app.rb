class App < ApplicationRecord
  belongs_to :partner
  accepts_nested_attributes_for :partner
  has_many :app_store_links
  def as_json(options={})
    super(:only => [:name, :description, :info_url, :is_live, :partner_id])
  end
  def to_slug(string)
    string.parameterize.truncate(80, omission: '')
  end
  def to_param
    slug
  end
  validates_presence_of :slug
  validates_length_of :description, maximum: 220
end