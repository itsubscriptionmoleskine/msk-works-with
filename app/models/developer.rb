class Developer < ApplicationRecord
  def as_json(options={})
    super(:only => [:name, :description, :url])
  end
end
