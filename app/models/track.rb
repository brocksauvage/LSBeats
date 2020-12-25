class Track < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :moods
  has_one_attached :mp3
  has_one_attached :wav
  has_one_attached :aiff
  has_one_attached :cover_image

  validates :title, presence: true, uniqueness: true
  validates_numericality_of :bpm

  alias_attribute :released, :release_date

  def url
    if wav.attached?
      Rails.application.routes.url_helpers.rails_blob_path(self.wav, only_path: true)
    elsif mp3.attached?
      Rails.application.routes.url_helpers.rails_blob_path(self.mp3, only_path: true)
    end
  end

  def cover_image_url
    if cover_image.attached?
      Rails.application.routes.url_helpers.rails_blob_path(self.cover_image, only_path: true)
    else
      nil
    end
  end
end
