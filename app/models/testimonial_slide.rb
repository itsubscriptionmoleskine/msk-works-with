class TestimonialSlide < ApplicationRecord
  belongs_to :testimonial
  accepts_nested_attributes_for :testimonial
  mount_uploader :image_url, ImageUploader
  def as_json(options={})
    super(:only => [:image_url, :caption, :testimonial_id, :sequence_number, :is_live])
  end
  validates :image_url, image_size: { width: { min: 1024 }, height: { min:768 } }
end