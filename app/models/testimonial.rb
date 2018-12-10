class Testimonial < ApplicationRecord
  belongs_to :works_with
  has_many :testimonial_slides
  accepts_nested_attributes_for :works_with
  mount_uploader :promo_image_url, ImageUploader
  def as_json(options={})
    super(:only => [:title, :description, :works_with_id, :is_live, :video_embed, :promo_text, :promo_image_url, :publish_date])
  end
end