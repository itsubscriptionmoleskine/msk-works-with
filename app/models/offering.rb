class Offering < ApplicationRecord
  has_many :works_withs
  def as_json(options={})
    super(:only => [:name, :description, :shop_link, :is_live])
  end
end
