class CreateApps < ActiveRecord::Migration[5.1]

  def self.up
    create_table :apps do |t|
      t.string :name
      t.text :description
      t.string :info_url
      t.boolean :is_live
      t.timestamps
    end
  end

  def self.down
    drop_table :apps
  end

end
