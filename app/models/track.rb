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
    if self.wav.attached?
      self.wav.attachment.service_url
    elsif self.mp3.attached?
      self.mp3.attachment.service_url
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
