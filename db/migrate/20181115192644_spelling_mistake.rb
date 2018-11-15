class SpellingMistake < ActiveRecord::Migration[5.1]
  def change
    rename_table :distrubtor_links, :distributor_links
  end
end
