class ExampleImage < ApplicationRecord
  belongs_to :works_with
  accepts_nested_attributes_for :works_with
  mount_uploader :image_url, ImageUploader
  def as_json(options={})
    super(:only => [:image_url, :caption, :works_with_id, :is_live])
  end
  validates :image_url, image_size: { width: { min: 1024 }, height: { min:768 } }
end
