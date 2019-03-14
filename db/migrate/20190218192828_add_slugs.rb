class AddSlugs< ActiveRecord::Migration[5.1]

  def self .up
    add_column :apps, :slug, :string
    add_column :developers, :slug, :string
    add_column :testimonials, :slug, :string
    add_column :use_cases, :slug, :string
    add_column :works_withs, :slug, :string
  end

  def self .down
    remove_column :apps, :slug, :string
    remove_column :developers, :slug, :string
    remove_column :testimonials, :slug, :string
    remove_column :use_cases, :slug, :string
    remove_column :works_withs, :slug, :string
  end

end
