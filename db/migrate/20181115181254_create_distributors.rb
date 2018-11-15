class CreateDistributors < ActiveRecord::Migration[5.1]
  def change
    create_table :distributors do |t|
      t.string :name
      t.string :badge_image_url
      t.boolean :is_live
      t.timestamps
    end
  end
end
