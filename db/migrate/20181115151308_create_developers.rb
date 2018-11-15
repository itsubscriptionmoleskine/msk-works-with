class CreateDevelopers < ActiveRecord::Migration[5.1]
  def self.up
    create_table :developers do |t|
      t.string :name
      t.text :description
      t.string :url
      t.boolean :is_live
      t.timestamps
    end
  end
  def self.down
    drop_table :developers
  end
end




