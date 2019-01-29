class TestimonialSlide < ApplicationRecord
  belongs_to :testimonial
  accepts_nested_attributes_for :testimonial
  def as_json(options={})
    super(:only => [:image_url, :caption, :testimonial_id, :sequence_number, :is_live])
  end
end