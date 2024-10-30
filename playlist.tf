resource "spotify_playlist" "Devotional" {
name = "sinach"
tracks = ["6hKHFC67DZJNw9tg1l0lIe"]  
}


data "spotify_search_track" "Devotional" {
  artist = "sinach"
}
  
resource "spotify_playlist" "sinach" {
 name = "sinach" 
 tracks = [data.spotify_search_track.Devotional.tracks[0].id,
 data.spotify_search_track.Devotional.tracks[1].id,
 data.spotify_search_track.Devotional.tracks[2].id,
 data.spotify_search_track.Devotional.tracks[3].id,
 data.spotify_search_track.Devotional.tracks[4].id]
}