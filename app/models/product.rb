class Product < ApplicationRecord
  has_many :works_withs
  def as_json(options={})
    super(:only => [:name, :description, :promo_text, :shop_link, :is_live])
  end
  validates_length_of :promo_text, maximum: 220
end
