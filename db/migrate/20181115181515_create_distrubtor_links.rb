class CreateDistributorLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :distributor_links do |t|
      t.string :link
      t.boolean :is_live
      t.timestamps
    end
  end
end
