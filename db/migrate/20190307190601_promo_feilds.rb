class PromoFeilds < ActiveRecord::Migration[5.1]
  def self.up
    add_column :products, :promo_text, :string
    add_column :partners, :promo_text, :string
  end

  def self.down
    remove_column :products, :promo_text, :string
    remove_column :partners, :promo_text, :string
  end
end
