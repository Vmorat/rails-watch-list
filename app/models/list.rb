class List < ApplicationRecord
  # Validations: A list must have a unique name.
  validates :name, presence: true, uniqueness: true

  # Associations:
  # A list has many bookmarks
  # When you delete a list, you should delete all associated bookmarks
  has_many :bookmarks, dependent: :destroy
end
