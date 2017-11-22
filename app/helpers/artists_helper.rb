module ArtistsHelper

  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_select(nested_artist, song)
    if nested_artist.nil?
      # select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
      "#{label :song, :artist_id} " + (collection_select :song, :artist_id, Artist.all, :id, :name)
    else
      nested_artist.name
    end
  end

end
