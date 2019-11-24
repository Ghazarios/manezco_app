class Subject < ApplicationRecord
  belongs_to :course
  has_many :quizzes
  has_many :child_subjects, class_name: 'Subject', foreign_key: 'parent_id'
	belongs_to :parent_subject, class_name: 'Subject', foreign_key: 'parent_id',optional: true
end
