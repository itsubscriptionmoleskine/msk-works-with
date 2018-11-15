class CreateExampleImages < ActiveRecord::Migration[5.1]
  def change
    create_table :example_images do |t|
      t.string :image_url
      t.text :caption
      t.boolean :is_live
      t.timestamps
    end
  end
end
