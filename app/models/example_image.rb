class ExampleImage < ApplicationRecord
  belongs_to :works_with
  accepts_nested_attributes_for :works_with
  def as_json(options={})
    super(:only => [:image_url, :caption, :works_with_id, :is_live])
  end
end
