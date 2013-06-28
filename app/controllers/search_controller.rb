class SearchController < ApplicationController
  def new

  end

  def results
    Song.search_soundcloud(params["search"]["query"])
    @results = Song.where(:query => params["search"]["query"]).limit(10)
  end

  def add_songs
    @playlist = List.find(params["list"]["list_id"])
    @playlist.song_ids = params["list"]["song_ids"]
  end
end
