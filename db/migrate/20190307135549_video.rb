class Video < ActiveRecord::Migration[5.2]

  def self.up

    create_table :promo_videos do |t|
      t.string :youtube_url
      t.text :description
      t.boolean :is_live
      t.references :works_with, index: true
    end

  end

  def self.down
    drop_table :promo_videos
  end
end
