class Genre < ApplicationRecord
  has_and_belongs_to_many :tracks
  validates :name, presence: true
  scope :alphabetical, -> { order(name: :asc) }

end
