class WorksWith < ApplicationRecord
  has_many :use_cases
  has_many :testimonials
  has_many :example_images
  belongs_to :app
  belongs_to :product
  accepts_nested_attributes_for :app
  accepts_nested_attributes_for :product
  def as_json(options={})
    super(:only => [:title, :description, :app_id, :product_id, :is_live, :promo_image_url, :promo_text])
  end
  def to_slug(string)
    string.parameterize.truncate(80, omission: '')
  end
  validates_presence_of :slug
  validates_length_of :promo_text, maximum: 220
end
