class Bookmark < ApplicationRecord
  # validations
  validates :comment, length: { minimum: 6 }

  # associations:
  # A bookmark belongs to a movie,
  belongs_to :movie
  # A bookmark belongs to a list
  belongs_to :list
end
