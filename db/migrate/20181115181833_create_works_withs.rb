class CreateWorksWiths < ActiveRecord::Migration[5.1]
  def change
    create_table :works_withs do |t|
      t.string :title
      t.text :description
      t.boolean :is_live
      t.timestamps
    end
  end
end
