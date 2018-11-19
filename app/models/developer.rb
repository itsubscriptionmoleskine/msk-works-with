class Developer < ApplicationRecord
  has_many :apps
  def as_json(options={})
    super(:only => [:name, :description, :url])
  end
end
