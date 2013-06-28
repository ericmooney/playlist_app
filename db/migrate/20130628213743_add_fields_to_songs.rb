class AddFieldsToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :soundcloud_id, :string
    add_column :songs, :url, :string
    add_column :songs, :description, :text
    add_column :songs, :artist, :string
  end
end
