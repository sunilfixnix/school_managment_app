class Exam < ApplicationRecord
	belongs_to :standard
	has_many :subjects
	has_many :results
	belongs_to :section
end
