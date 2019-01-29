class Product < ApplicationRecord
  has_many :works_withs
  def as_json(options={})
    super(:only => [:name, :description, :shop_link, :is_live])
  end
  validates_length_of :description, maximum: 220
end
