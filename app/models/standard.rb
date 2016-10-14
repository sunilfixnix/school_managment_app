class Standard < ApplicationRecord
	belongs_to :school
	has_many :sections
	has_many :teachers
	has_many :subjects
	has_many :exams
	has_many :results
end
