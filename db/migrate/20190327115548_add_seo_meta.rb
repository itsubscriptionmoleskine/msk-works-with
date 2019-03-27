class AddSeoMeta < ActiveRecord::Migration[5.2]
  def self.up
    add_column :works_withs, :meta_title, :string
    add_column :partners, :meta_title, :string
  end

  def self.down
    remove_column :works_withs, :meta_title, :string
    remove_column :partners, :meta_title, :string
  end
end
