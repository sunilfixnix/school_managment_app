class Teacher < ApplicationRecord
	belongs_to :standard
	has_many :subjects
end
