class RenameArtistField < ActiveRecord::Migration
  def change
    rename_column :songs, :artist, :query
  end
end
