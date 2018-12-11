class Testimonial < ApplicationRecord
  belongs_to :works_with
  has_many :testimonial_slides
  accepts_nested_attributes_for :works_with
  mount_uploader :promo_image_url, ImageUploader
  def as_json(options={})
    super(:only => [:title, :description, :works_with_id, :is_live, :video_embed, :promo_text, :promo_image_url, :publish_date])
  end
  validates_length_of :promo_text, maximum: 220
  validates :promo_image_url, image_size: { width: { min: 640 }, height: { min:640 } }
end