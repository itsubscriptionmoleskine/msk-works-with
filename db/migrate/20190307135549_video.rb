class Video < ActiveRecord::Migration[5.2]

  def self.up
    if ActiveRecord::Base.connection.table_exists? 'kittens' do
      drop_table :videos
    end
    create_table :videos do |t|
      t.string :youtube_url
      t.text :description
      t.boolean :is_live
      t.references :works_with, index: true
    end
  end

  def self.down
    drop_table :videos
  end
end
