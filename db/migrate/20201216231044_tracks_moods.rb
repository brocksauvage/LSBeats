class TracksMoods < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks_moods, id: false do |t|
      t.belongs_to :track
      t.belongs_to :mood
    end
  end
end
