class Student < ApplicationRecord
	belongs_to :section
	has_many :attendances
	has_many :subjects
	has_many :results
end
