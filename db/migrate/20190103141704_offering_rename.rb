class OfferingRename < ActiveRecord::Migration[5.1]

  def self.up
    rename_table :offerings, :products
  end

  def self.down
    rename_table :products, :offerings
  end

end