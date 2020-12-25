Trestle.resource(:tracks) do
  active_storage_fields do
    [:mp3, :wav, :aiff, :cover_image]
  end

  menu do
    item :tracks, icon: "fa fa-bars", priority: :first
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :title
    column :bpm, header: "BPM"
    column :length
    column :released
    column :has_mp3, header: "MP3"
    column :has_wav, header: "WAV"
    column :has_aiff, header: "AIFF"
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |track|
    row do
      col { text_field :title }
      col { number_field :bpm, label: "BPM" }
      col { select :has_vocals, [["No", false], ["Yes", true]], label: "Has vocals?" }
    end
    row do
      col { select :genre_ids, Genre.alphabetical, { label: "Genres" }, multiple: true }
      col { select :mood_ids, Mood.alphabetical, { label: "Moods" }, multiple: true }
    end
    row do
      col { active_storage_field :mp3, label: "MP3" }
      col { active_storage_field :wav, label: "WAV" }
      col { active_storage_field :aiff, label: "AIFF" }
    end
    row do
      col { active_storage_field :cover_image, label: "Cover Image" }
    end
    row do
      col { datetime_field :released, label: "Release Date" }
      col { datetime_field :updated_at }
      col { datetime_field :created_at }
    end
    hidden_field :user_id, value: current_user.id
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:track).permit(:name, ...)
  # end
end
