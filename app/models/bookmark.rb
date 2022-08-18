class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: { minimum: 6 }
  # is unique for a given movie/list couple (FAILED - 4)
  validates :movie_id, uniqueness: { scope: :list_id }
  # validates :comment, uniqueness: true, scope:
  # validates_uniqueness_of :teacher_id, scope: %i[list_id movie_id]
end
