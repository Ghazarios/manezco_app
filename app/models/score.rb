class Score < ApplicationRecord
  validates :quiz, uniqueness: true
  belongs_to :user
end
