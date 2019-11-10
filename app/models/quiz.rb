class Quiz < ApplicationRecord
  belongs_to :subject
  has_many :theories
  has_many :questions
end
