class ChangeTableNames < ActiveRecord::Migration[6.0]
  def change
    rename_table :tracks_genres, :genres_tracks
    rename_table :tracks_moods, :moods_tracks
  end
end
