class OfferingAssocRename < ActiveRecord::Migration[5.1]

  def self.up
    rename_column :works_withs, :offering_id, :product_id
  end

  def self.down
    rename_column :works_withs, :product_id, :offering_id
  end

end
