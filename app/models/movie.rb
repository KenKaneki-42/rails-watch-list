class Movie < ApplicationRecord
  has_many :bookmarks

  # title is unique
  # title cannot be blank
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  # overview cannot be blank (FAILED - 11)
end
