class Question < ApplicationRecord
	has_many :options
	accepts_nested_attributes_for :options
end
