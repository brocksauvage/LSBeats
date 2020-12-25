class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.string :title
      t.integer :bpm
      t.boolean :has_vocals
      t.datetime :release_date
      t.integer :length
      t.boolean :has_mp3
      t.boolean :has_wav
      t.boolean :has_aiff
      t.belongs_to :user
      t.timestamps
    end
  end
end
