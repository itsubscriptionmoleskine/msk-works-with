class TestimonialUpdate < ActiveRecord::Migration[5.2]

  def self.up
    create_table :testimonial_images do |t|
      t.string :image_url
      t.text :caption
      t.boolean :is_live
      t.timestamps
    end
    add_reference :testimonial_images, :testimonial, index: true
    add_column :testimonials, :video_embed, :text
  end

  def self.down
    remove_reference :testimonial_images, :testimonial
    drop_table testimonial_images
    remove_column :testimonials, :video_embed
  end

end
