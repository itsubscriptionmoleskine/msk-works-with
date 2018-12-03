class TestimonialAdditions < ActiveRecord::Migration[5.2]

  def self.up
    add_reference :testimonial_slides, :testimonial, index: true
    add_column :testimonials, :video_embed, :text
  end

  def self.down
    remove_reference :testimonial_slides, :testimonial
    remove_column :testimonials, :video_embed
  end

end
