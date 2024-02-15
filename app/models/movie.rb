class Movie < ApplicationRecord
  # Validations: A movie must have a unique title and an overview.
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, uniqueness: true

  # Associations: A movie has many bookmarks
  has_many :bookmarks
end
