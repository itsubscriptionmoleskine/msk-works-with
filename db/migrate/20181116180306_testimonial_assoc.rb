class TestimonialAssoc < ActiveRecord::Migration[5.1]
  def self.up
    add_reference :testimonials, :works_with, index: true
  end
  def self.down
    remove_reference :testimonials, :works_with
  end
end
