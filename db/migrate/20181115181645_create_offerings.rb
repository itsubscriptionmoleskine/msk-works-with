class CreateOfferings < ActiveRecord::Migration[5.1]
  def change
    create_table :offerings do |t|
      t.string :name
      t.string :shop_link
      t.text :description
      t.boolean :is_live
      t.timestamps
    end
  end
end
