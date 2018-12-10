class Offering < ApplicationRecord
  #has_many :apps, through: :works_withs
  # ToDo: fix relationship
  def as_json(options={})
    super(:only => [:name, :description, :shop_link, :is_live])
  end
end
