class WorksWithPromo < ActiveRecord::Migration[5.1]
  def self.up
    add_column :works_withs, :promo_image_url, :string
    add_column :works_withs, :promo_text, :text
  end

  def self.down
    remove_column :works_withs, :promo_image_url
    remove_column :works_withs, :promo_text
  end
end
