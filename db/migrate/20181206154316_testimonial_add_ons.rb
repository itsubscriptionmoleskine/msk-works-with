class TestimonialAddOns < ActiveRecord::Migration[5.1]

  def self.up
    add_column :testimonials, :promo_image_url, :string
    add_column :testimonials, :promo_text, :text
    add_column :testimonials, :publish_date, :date
  end

  def self.down
    remove_column :testimonials, :promo_image_url
    remove_column :testimonials, :promo_text
    remove_column :testimonials, :publish_date
  end

end
