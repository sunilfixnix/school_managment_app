class Subject < ApplicationRecord
	belongs_to :standard
	belongs_to :teacher
	belongs_to :exam
	belongs_to :student
	belongs_to :result

end
