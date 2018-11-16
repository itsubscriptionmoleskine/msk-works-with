class ExampleImagesAssoc < ActiveRecord::Migration[5.1]
  def self.up
    add_reference :example_images, :works_with, index: true
  end
  def self.down
    remove_reference :example_images, :works_with
  end
end
