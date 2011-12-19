class AddCachedSlugToLists < ActiveRecord::Migration
  def self.up
    add_column :lists, :cached_slug, :string
  end

  def self.down
    remove_column :lists, :cached_slug
  end
end
