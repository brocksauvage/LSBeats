class TracksGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks_genres, id: false do |t|
      t.belongs_to :track
      t.belongs_to :genre
    end
  end
end
