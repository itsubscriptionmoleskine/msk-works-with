class DeveloperDistributorImg < ActiveRecord::Migration[5.1]

  def self. up
    add_column :developers, :logo_image_url, :string
    add_column :distributors, :icon_id, :string
  end

  def self. down
    remove_column :developers, :logo_image_url
    remove_column :distributors, :icon_id
  end

end
