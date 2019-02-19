class Testimonial < ApplicationRecord
  belongs_to :works_with
  has_many :testimonial_slides
  accepts_nested_attributes_for :works_with
  def as_json(options={})
    super(:only => [:title, :description, :works_with_id, :is_live, :video_embed, :promo_text, :promo_image_url, :publish_date])
  end
  def to_slug(string)
    string.parameterize.truncate(80, omission: '')
  end
  validates_presence_of :slug
  validates_length_of :promo_text, maximum: 220
end