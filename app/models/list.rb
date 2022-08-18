class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  # name cannot be blank (FAILED - 5)
  # name is unique (FAILED - 6)
  validates :name, presence: true, uniqueness: true
  # has many movies (FAILED - 7)

  # should destroy child saved movies when destroying self (FAILED - 8)

end
