# == Schema Information
#
# Table name: songs
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  soundcloud_id :string(255)
#  url           :string(255)
#  description   :text
#  query         :string(255)
#

class Song < ActiveRecord::Base
  has_and_belongs_to_many :lists
  attr_accessible :name, :soundcloud_id, :url, :description, :query

  def Song.search_soundcloud(query)
    client = Soundcloud.new(
      :client_id => '7715196c0f198b8b9b8f75fba2c30f8b',
      :client_secret => '825306a93b9c97828115155393e07db6'
      )
    tracks = client.get('/tracks', :q => query, :licence => 'cc-by-sa')

    tracks.each do |t|
      track = {
        :name => t["title"],
        :description => t["description"],
        :url => t["permalink_url"],
        :soundcloud_id => t["id"].to_s,
        :query => query
      }
      Song.find_or_create_by_soundcloud_id(track)
    end
  end
end
