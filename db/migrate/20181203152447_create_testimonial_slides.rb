class CreateTestimonialSlides < ActiveRecord::Migration[5.2]
  def self.up
    create_table :testimonial_slides do |t|
      t.string :image_url
      t.text :caption
      t.boolean :is_live
      t.integer :sequence_number
      t.timestamps
    end
  end

  def self.down
    drop_table :testimonial_slides
  end

end
