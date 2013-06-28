class CreateListsSongsBridge < ActiveRecord::Migration
  def change
    create_table :lists_songs do |t|
     t.integer :list_id
     t.integer :song_id
    end
  end
end
