class Partner < ApplicationRecord
  has_many :apps
  def as_json(options={})
    super(:only => [:name, :description, :promo_text, :url, :is_live, :logo_image_url])
  end
  def to_slug(string)
    string.parameterize.truncate(80, omission: '')
  end
  def to_param
    slug
  end
  validates_presence_of :slug
  validates_length_of :promo_text, maximum: 220
end
