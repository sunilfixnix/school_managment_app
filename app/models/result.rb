class Result < ApplicationRecord
	belongs_to :standard
	has_many :subjects
	belongs_to :student
	belongs_to :exam
end
