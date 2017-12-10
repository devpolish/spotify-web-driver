require 'rspotify'
require_relative './configurable'
class SpotifyClient
  include RSpotify
  include WebBrowser

  def initialize
    keys = CONFIG["spotify"]
    RSpotify::authenticate(keys["client_id"], keys["api_key"])
  end

  def find_artist_by_name(name)
    Artist.search(name)
  end

  def find_artist_by_album(album)
    Album.search(album)
  end

  def create_playlist(name)
  end

  def play_song(song_uri)
    WebBrowser.open_url('')
  end
end
