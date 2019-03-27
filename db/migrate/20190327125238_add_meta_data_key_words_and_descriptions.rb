class AddMetaDataKeyWordsAndDescriptions < ActiveRecord::Migration[5.2]
  def self.up
    add_column :works_withs, :meta_keywords, :string
    add_column :partners, :meta_keywords, :string
    add_column :works_withs, :meta_description, :string
    add_column :partners, :meta_description, :string
  end

  def self.down
    remove_column :works_withs, :meta_keywords, :string
    remove_column :partners, :meta_keywords, :string
    remove_column :works_withs, :meta_description, :string
    remove_column :partners, :meta_description, :string
  end

end
