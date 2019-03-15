class CreateVideo < ActiveRecord::Migration[5.1]
  def self.up
    create_table :videos do |v|
      v.string :youtube_url
      v.text :description
      v.boolean :is_live
      v.references :works_with, index: true
    end
  end

  def self.down
    drop_table :videos
  end
end
