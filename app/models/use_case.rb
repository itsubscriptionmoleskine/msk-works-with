class UseCase < ApplicationRecord
  belongs_to :works_with
  accepts_nested_attributes_for :works_with
  def as_json(options={})
    super(:only => [:title, :description, :works_with_id, :is_live])
  end
end