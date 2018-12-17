class AddProductImageToOffering < ActiveRecord::Migration[5.1]

  def self.up
    add_column :offerings, :product_image, :string
  end

  def self.down
    remove_column :offerings, :product_image
  end

end