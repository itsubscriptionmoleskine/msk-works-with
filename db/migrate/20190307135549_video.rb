require 'pry'; binding.pry

class Video < ActiveRecord::Migration[5.2]
  def self.up
    create_table :promo_videos do |v|
      v.string :youtube_url
      v.text :description
      v.boolean :is_live
      v.references :works_with, index: true
    end
  end

  def self.down
    drop_table :promo_videos
  end
end
